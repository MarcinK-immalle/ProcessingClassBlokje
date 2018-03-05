using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace class_blokje1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Press an arrow key! Press q to quit.");

            var f = @"c:\ff\instruction.txt";

            ConsoleKey k = ConsoleKey.Escape;


            while (k != ConsoleKey.Q)
            {
                k = Console.ReadKey().Key;
                switch (k)
                {
                    case ConsoleKey.UpArrow:
                        System.IO.File.WriteAllText(f, "UP");
                        break;
                    case ConsoleKey.DownArrow:
                        System.IO.File.WriteAllText(f, "DOWN");
                        break;
                    case ConsoleKey.LeftArrow:
                        System.IO.File.WriteAllText(f, "LEFT");
                        break;
                    case ConsoleKey.RightArrow:
                        System.IO.File.WriteAllText(f, "RIGHT");
                        break;
                }
            }
        }
    }
}
