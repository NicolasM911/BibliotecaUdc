using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BIbliotecaUDC.Negocio
{
    internal class FachadaGenerica<T> : IFachadaGenerica<T> where T : class
    {
        private readonly DataContext _db;
        public FachadaGenerica()
        {
            _db = new DataContext(ConfigurationManager.ConnectionStrings["BIbliotecaUDC"].ToString())
            {
                DeferredLoadingEnabled = false,
                CommandTimeout = 0
            };
        }
        public bool Insert(T entity)
        {
            _db.GetTable<T>().InsertOnSubmit(entity);
            _db.SubmitChanges();
            return true;
        }

        public bool Delete(T entity)
        {
            _db.GetTable<T>().Attach(entity);
            _db.Refresh(RefreshMode.KeepCurrentValues, entity);
            _db.GetTable<T>().DeleteOnSubmit(entity);
            _db.SubmitChanges();
            return true;

        }
        public bool Update(T entity)
        {
            _db.GetTable<T>().Attach(entity);
            _db.Refresh(RefreshMode.KeepCurrentValues, entity);
            _db.SubmitChanges();
            return true;
        }

        public T First(Func<T, bool> exp)
        {
            return _db.GetTable<T>().FirstOrDefault(exp);
        }

        public IEnumerable<T> All()
        {
            return _db.GetTable<T>().AsEnumerable();
        }
        public IEnumerable<T> FindAll(Func<T, bool> exp)
        {
            return _db.GetTable<T>().Where(exp);
        }
    }

}