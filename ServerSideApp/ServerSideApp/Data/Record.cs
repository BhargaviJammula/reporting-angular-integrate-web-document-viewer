﻿namespace ServerSideApp.Data
{
    public class Record
    {
        int id, age;
        string name;
        public Record(int id, string name, int age)
        {
            this.id = id;
            this.name = name;
            this.age = age;
        }
        public int ID
        {
            get { return id; }
            set { id = value; }
        }
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public int Age
        {
            get { return age; }
            set { age = value; }
        }
    }
}
