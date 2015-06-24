//                     Example 5.3
// A program to evaluate the power series. It uses if...else to test accuracy.
// e^x=1+x+x^2/2! + x^3/3! +    +x^n/n!,0<x<1

ACCURACY=0.0001;
x=input("Enter value of x:");
n=1;term=1;sum1=1;count=int8(1);
while(n<=100)
    term=term* x/n;
    sum1=sum1+term;
    count=count+1;
    if(term<ACCURACY) then      //Test for accuracy
        n=999;
    else
        n=n+1;
     end
end
//Print results
printf("Term=%d Sum=%f",count,sum1);