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
            if (!(-92 <= n && n <= 92))
                throw new ArgumentOutOfRangeException();

            if (n < 0) return Fibonacci(-n);
            return Fibonacci(n);
        }

        // Fast doubling algorithm
        private static long Fibonacci(long n)
        {
            long a = 0;
            long b = 1;
            for (int i = 31; i >= 0; i--)
            {
                long d = a * (b * 2 - a);
                long e = a * a + b * b;
                a = d;
                b = e;
                if ((((uint)n >> i) & 1) != 0)
                {
                    long c = a + b;
                    a = b;
                    b = c;
                }
            }
            return a;
        }

        public Task<long> FibonacciNumberAsync(long n)
        {
            return Task.Run(() => FibonacciNumber(n));
        }

        public TriangleType WhatShapeIsThis(int a, int b, int c)
        {
            if(a + b + c != 180)
                return TriangleType.Error;
            
            else if (a <= 0 || b <= 0 || c <= 0)
                return TriangleType.Error;

            else if (!(a < b + c && b < a + c && c < a + b)) 
                return TriangleType.Error;

            else if (a == b && b == c)
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
            if (s == null)
                throw new ArgumentNullException();

            var result = new StringBuilder(s.Length);

            int start = 0;

            while (start < s.Length)
            {
                int end = start;
                while (end < s.Length && !Char.IsWhiteSpace(s[end])) end++;

                for (int i = end - 1; i >= start; i--) result.Append(s[i]);

                start = end;
                while (start < s.Length && Char.IsWhiteSpace(s[start])) result.Append(s[start++]);
            }

            return result.ToString();
        }

        public Task<string> ReverseWordsAsync(string s)
        {
            return Task.Run(() => ReverseWords(s));
        }
    }
}
