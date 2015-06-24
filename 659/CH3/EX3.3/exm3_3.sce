//                       Example 3.3
//The program employs diffrent kind of operators. The results of their evaluation are also shown for comparison

//Increment(i.e. ++)/Decrement(--) operators are unavailable in Scilab
a=int16(15);
b=int16(10);
a=a+1;  // Replacement for ++a
c=a-b;
printf("a = %d b = %d c = %d\n",a,b,c);
b=b+1;  // Replacement for b++
d=b+a;
printf("a = %d b = %d d = %d\n",a,b,d);
printf("a/b = %d\n",a/b);                    //Division operator
printf("pmodulo(a,b) = %d\n",pmodulo(a,b));  //Modulus operatior
printf("a*b = %d\n",a*b);                    //Multiplication
//In scilab ther is no conditional operator(?:),hence 'if' can be used in place of ?:
if(c>d) then
    disp(1);
end
if(c<d) then
    disp(0);
end