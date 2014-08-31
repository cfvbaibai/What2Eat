using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Cfvbaibai.What2Eat.Core;
using System.Configuration;
using System.Text;

namespace Cfvbaibai.What2Eat.Test
{
    [TestClass]
    public class TestDbAccess
    {
        [ClassInitialize]
        public static void Initialize(TestContext context)
        {
        }

        [TestMethod]
        public void TestQueryUser()
        {
            using (var entities = new What2EatEntities())
            {
                var test1 = entities.Users.Find("test_1");
                if (test1 != null)
                {
                    entities.Users.Remove(test1);
                }

                entities.Users.Add(new User { UserId = "test_1", NickName = "Test 1", Password = "aaaaaa", });
                entities.SaveChanges();
                foreach (var user in entities.Users)
                {
                    Console.WriteLine("{0} is updated at {1}.", user.UserId, user.Updated);
                }
            }
        }

        [TestMethod]
        public void TestDishes()
        {
            TestQueryUser();
            using (var entities = new What2EatEntities())
            {
                entities.AddDish_1("黑森林蛋糕", 1);
                entities.AddDish_1("趣多多", 4);
                entities.SaveChanges();

                foreach (var dish in entities.Dishes)
                {
                    Console.WriteLine("Dish: {0}, Type: {1}", dish.Name, dish.Type);
                }

                foreach (var dishDetail in entities.DishDetails)
                {
                    Console.WriteLine("Dish: {0}, Type: {1}/{2}/{3}",
                        dishDetail.Name, dishDetail.Category1, dishDetail.Category2, dishDetail.Category3);
                }
            }
        }

        [TestMethod]
        public void TestMeals()
        {
            TestDishes();
            using (var entities = new What2EatEntities())
            {
                entities.AddMeal_1("test_1", DateTime.UtcNow, 1, "趣多多");
                entities.AddMeal_1("test_1", DateTime.UtcNow, 1, "哈哈哈");
                entities.AddMeal_1("test_1", DateTime.UtcNow, 1, "黑森林蛋糕");
                entities.SaveChanges();

                foreach (var mealDetails in entities.MealDetails)
                {
                    Console.WriteLine("Meal: {0}", DumpObject(mealDetails));
                }
            }
        }

        private string DumpObject(object obj)
        {
            if (obj == null)
            {
                return "<NULL>";
            }
            StringBuilder sb = new StringBuilder();
            foreach (var propertyInfo in obj.GetType().GetProperties())
            {
                var value = propertyInfo.GetValue(obj);
                sb.AppendFormat("    {0} = {1}{2}", 
                    propertyInfo.Name,
                    value == null ? "<NULL>" : value.ToString(),
                    Environment.NewLine);
            }
            return sb.ToString();
        }
    }
}
