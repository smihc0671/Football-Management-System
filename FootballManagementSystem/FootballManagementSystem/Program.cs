using FootballManagementSystem.Components;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using FootballManagementSystem.Data;
using Radzen;

var builder = WebApplication.CreateBuilder(args);

// Radzen servislerini ekleme
builder.Services.AddScoped<TooltipService>();
// Eğer diğer Radzen servislerine de ihtiyacınız varsa, şu şekilde ekleyebilirsiniz:
builder.Services.AddScoped<DialogService>();
builder.Services.AddScoped<NotificationService>();
builder.Services.AddScoped<ContextMenuService>();

// Veritabanı servisi (FootballManagementSystemContext) eklemek
builder.Services.AddDbContextFactory<FootballManagementSystemContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("FootballManagementSystemContext")
        ?? throw new InvalidOperationException("Connection string 'FootballManagementSystemContext' not found.")));

// QuickGrid EF adapter’ını eklemek
builder.Services.AddQuickGridEntityFrameworkAdapter();

// Veritabanı geliştirme hata ayıklama aracını eklemek
builder.Services.AddDatabaseDeveloperPageExceptionFilter();

// Razor bileşenleri servisini eklemek
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

var app = builder.Build();

// HTTP istek boru hattını yapılandırmak
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    app.UseHsts();
    app.UseMigrationsEndPoint();
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseAntiforgery();

// Razor bileşenlerini yapılandırmak
app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();

app.Run();
