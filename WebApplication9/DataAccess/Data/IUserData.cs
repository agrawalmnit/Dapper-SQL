using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.Models;

namespace DataAccess.Data
{
    public interface IUserData
    {
        Task DeleteUser(int id);

        Task<User> GetUser(int id);

        Task<IEnumerable<User>> GetUser();

        Task InsertUser(User user);

        Task UpdateUser(User user);
    }
}
