using DataAccess.DBAccess;
using DataAccess.Models;


namespace DataAccess.Data
{
    public class UserData : IUserData
    {
        private readonly ISqlDataAccess _db;

        public UserData(ISqlDataAccess db)
        {
            _db = db;
        }

        public Task<IEnumerable<User>> GetUser() =>

            _db.LoadData<User, dynamic>
            
            (storedProcedure: "dbo.GetAll", new { });

        public async Task<User> GetUser
            
            (int PersonId)

        {

            var results = await _db.LoadData<User, dynamic>
                
                (
                storedProcedure: "dbo.Get",

                new { PersonId = PersonId });

            return results.ToList().FirstOrDefault();

        }

        public Task InsertUser(User user) =>

            _db.SaveData(storedProcedure: "dbo.Insert", new { user.FirstName, user.LastName });

        public Task UpdateUser(User user) =>

            _db.SaveData(storedProcedure: "dbo.Update", user);

        public Task DeleteUser(int PersonId) =>

            _db.SaveData(storedProcedure: "dbo.Delete", new { PersonId = PersonId });
    }
}
