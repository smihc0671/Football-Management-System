using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using DataAcess;
using DataAccess;

namespace FootballManagementSystem.Data
{
    public class FootballManagementSystemContext : DbContext
    {
        public FootballManagementSystemContext (DbContextOptions<FootballManagementSystemContext> options)
            : base(options)
        {
        }

        public DbSet<DataAcess.Player> Player { get; set; } = default!;
        public DbSet<DataAccess.Team> Team { get; set; } = default!;
        public DbSet<DataAccess.League> League { get; set; } = default!;
        public DbSet<DataAcess.Transferred> Transferred { get; set; } = default!;
        public DbSet<DataAcess.Match> Match { get; set; } = default!;
        public DbSet<DataAcess.Stadium> Stadium { get; set; } = default!;
        public DbSet<DataAcess.Transfer> Transfer { get; set; } = default!;
    }
}
