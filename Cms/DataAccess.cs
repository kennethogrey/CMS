using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using System.Data.Common;

namespace Cms
{
    public class DataAccess
    {
        private Database CMS_DB;
        private DbCommand query;
        private DataTable dataTable;

        public DataAccess()
        {
            try
            {
                DatabaseProviderFactory factory = new DatabaseProviderFactory();
                CMS_DB = factory.Create("CMS");
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public DataTable GetUser_1(string email, string password)
        {
            try
            {
                query = CMS_DB.GetStoredProcCommand("Group1_GetUser", email, password);
                dataTable = CMS_DB.ExecuteDataSet(query).Tables[0];
                return dataTable;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public DataTable GetRoles()
        {
            try
            {
                query = CMS_DB.GetStoredProcCommand("Group1_GetRoles");
                dataTable = CMS_DB.ExecuteDataSet(query).Tables[0];
                return dataTable;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public DataTable InsertUser(string password, string fullName, string email, string primaryNumber, string secondaryNumber)
        {
            try
            {
                query = CMS_DB.GetStoredProcCommand("Group1_StoreUser", password, fullName, email, primaryNumber, secondaryNumber);
                dataTable = CMS_DB.ExecuteDataSet(query).Tables[0];
                return dataTable;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public DataTable InsertUser(string password, string fullName, string email, string primaryNumber)
        {
            try
            {
                query = CMS_DB.GetStoredProcCommand("Group1_StoreUser", password, fullName, email, primaryNumber);
                dataTable = CMS_DB.ExecuteDataSet(query).Tables[0];
                return dataTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}