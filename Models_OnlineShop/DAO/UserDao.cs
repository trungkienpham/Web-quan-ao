﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models_OnlineShop.EF;
using PagedList;
namespace Models_OnlineShop.DAO
{
    public class UserDao
    {
        OnlineShopDbContext db = null;
        public UserDao()
        {
            db = new OnlineShopDbContext();
        }
        public long Insert(User entity)
        {
            
            db.Users.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }
        public bool update(User entity)
        {
            try
            {
                var user = db.Users.Find(entity.ID);
                if (string.IsNullOrEmpty(entity.PassWord))
                {
                    user.PassWord = entity.PassWord;
                }
                user.Address = entity.Address;
                user.Email = entity.Email;
                user.Phone = entity.Phone;
                user.ModifyBy = entity.ModifyBy;
                user.ModifyDate = DateTime.Now;
                db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }
        public bool Delete(int id)
        {
            try
            {
                var user = db.Users.Find(id);
                db.Users.Remove(user);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

           

        }
        //Phân trang
        public IEnumerable<User> ListAllPaging(string search, int page, int pageSize)
        {
            IQueryable<User> model = db.Users;
            if (!string.IsNullOrEmpty(search))
            {
                model = model.Where(x => x.UserName.Contains(search) || x.Name.Contains(search));
            }
            return model.OrderByDescending(x => x.CreatedDate).ToPagedList(page, pageSize);
        }
        public User getByID(string username)
        {
            return db.Users.SingleOrDefault(x => x.UserName == username);
        }
        public User viewDetalt(int id)
        {
            return db.Users.Find(id);
        }
        
        public bool changeStatus(long id)
        {
            var user = db.Users.Find(id);
            if (user.Status)
            {
                user.Status = false;
            }
            else user.Status = true;
            db.SaveChanges();
            return user.Status;
        }

        public int Login(string username, string password)
        {
            var result = db.Users.SingleOrDefault(x => x.UserName == username);
            if (result == null)
            {
                return 0;//tài khoản không tồn tại
            }
            else
            {
                if (result.Status == false)
                {
                    return -1;//Tài khoản đã bị khóa
                }
                else
                {
                    if (result.PassWord == password)
                    {
                        return 1;//đúng
                    }
                    else
                    {
                        return -2;//Mật khẩu sai
                    }
                }
            }
        }

        public long InsertForFacebook(User entity)
        {
            var user = db.Users.SingleOrDefault(x => x.UserName == entity.UserName);
            if (user == null)
            {
                db.Users.Add(entity);
                db.SaveChanges();
                return entity.ID;
            }
            else
            {
                return user.ID;
            }

        }

        public bool checkEmail(string email)
        {
            return db.Users.Count(x => x.Email == email) > 0;
        }
        public bool checkUsername(string username)
        {
            return db.Users.Count(x => x.UserName == username) > 0;
        }

    }
}
