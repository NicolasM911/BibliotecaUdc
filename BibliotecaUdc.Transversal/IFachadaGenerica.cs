using System.Collections.Generic;
using System;

public interface IFachadaGenerica<T> where T : class
{

    bool Insert(T entity);
    bool Delete(T entity);
    bool Update(T entity);
    T First(Func<T, bool> exp);
    IEnumerable<T> All();
    IEnumerable<T> FindAll(Func<T, bool> exp);
}
