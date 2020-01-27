using System.Linq;

namespace QueryableVsEnumerable.Models
{
    public class Repository
    {
        private readonly PeopleContext _context;
        
        public Repository(PeopleContext context)
        {
            _context = context;
        }

        // Changing the returned type here to IEnumerable<T> will cause a perfomacne issue in HomeController.Count()
        public IQueryable<Person> Older (int minAge)
        {
            return from p in _context.People where p.Age > minAge select p;
        }
    }
}
