using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vidzy
{
  class Program
  {
    static void Main(string[] args)
    {
      var vidzy = new VidzyEntities();
      vidzy.AddVideo("Field of Dreams", new DateTime(1999, 1, 1), "Family", 3);
      vidzy.AddVideo("Mask", new DateTime(2001, 1, 15), "Comedy", 2);
      vidzy.AddVideo("Escape From Alcatraz", new DateTime(1999, 12, 22), "Action", 2);

    }
  }
}
