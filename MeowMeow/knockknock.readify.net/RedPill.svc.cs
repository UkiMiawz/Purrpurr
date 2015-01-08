using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Threading.Tasks;

namespace knockknock.readify.net
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    [ServiceBehavior(IncludeExceptionDetailInFaults = true)]
    public class RedPill : IRedPill
    {
        public Guid WhatIsYourToken()
        {
            return new Guid("5bdf63bc-97cf-4d9e-ae40-21d5d269205d");
        }

        public Task<Guid> WhatIsYourTokenAsync()
        {
            return Task.Run(() => WhatIsYourToken());
        }

        public long FibonacciNumber(long n)
        {
            if (n < 2)
                return n;
            return FibonacciNumber(n - 1) + FibonacciNumber(n - 2);
        }

        public Task<long> FibonacciNumberAsync(long n)
        {
            return Task.Run(() => FibonacciNumber(n));
        }

        public TriangleType WhatShapeIsThis(int a, int b, int c)
        {
            if(a + b + c != 180)
                return TriangleType.Error;

            if (a == b && a == c && b == c)
                return TriangleType.Equilateral;
            else if (a == b || a == c || b == c)
                return TriangleType.Equilateral;
            else
                return TriangleType.Scalene;
        }

        public Task<TriangleType> WhatShapeIsThisAsync(int a, int b, int c)
        {
            return Task.Run(() => WhatShapeIsThis(a, b, c));
        }

        public string ReverseWords(string s)
        {
            var arr = s.ToCharArray();
            Array.Reverse(arr);
            return new string(arr);
        }

        public Task<string> ReverseWordsAsync(string s)
        {
            return Task.Run(() => ReverseWords(s));
        }
    }
}
