using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Threading.Tasks;

[assembly: ContractNamespace("http://KnockKnock.readify.net", ClrNamespace = "knockknock.readify.net")]
namespace knockknock.readify.net
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract(Namespace = "http://KnockKnock.readify.net", Name = "IRedPill")]
    public interface IRedPill
    {
        [OperationContract(Name = "WhatIsYourToken")]
        Guid WhatIsYourToken();

        [OperationContract(Name = "FibonacciNumber")]
        long FibonacciNumber(long n);

        [OperationContract(Name = "WhatShapeIsThis")]
        TriangleType WhatShapeIsThis(int a, int b, int c);

        [OperationContract(Name = "ReverseWords")]
        string ReverseWords(string s);
    }

    [DataContract(Namespace="http://KnockKnock.readify.net", Name = "TriangleType")]
    public enum TriangleType
    {
        [EnumMember]
        Error = 0,

        [EnumMember]
        Equilateral = 1,

        [EnumMember]
        Isosceles = 2,

        [EnumMember]
        Scalene = 3
    }
}
