using Microsoft.EntityFrameworkCore;

namespace QueryableVsEnumerable.Models
{
    public class PeopleContext : DbContext
    {
        public PeopleContext()
        { }

        public PeopleContext(DbContextOptions<PeopleContext> options)
            : base(options)
        {

        }

        public DbSet<Person> People { get; set; }
    }
}
