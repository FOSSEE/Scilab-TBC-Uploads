//                 Example 3.6
//Program using a cast to evaluate the equation. 

sum1=0;
for n=int8(1:10)
    sum1=sum1+1/double(n);   //conversion from 'int' to 'double' or 'float'
     printf("%2d %6.4f\n",n,sum1);
end