//               Example 6.6
//Program to evaluate the series i.e.
// 1/1-x = 1+x+x^2+x^3+.....+x^n

x=input("Input value of x:");   //Read value of x
LOOP=100; ACCURACY=0.0001;      //Initialization
sum1=0;term=1;flag=0;
//Computation using for loop
for n=1:LOOP
    sum1=sum1+term;
    if(term<=ACCURACY) then     //Test for accuracy
        flag=1;
        break;
    end
    term=term*x;

end
//Print the results
if(flag==1) then
    printf("  EXIT FROM LOOP\n");
    printf("  Sum =%f ; No. of terms =%d",sum1,n);
else
    disp("FINAL VALUE OF N IS NOT SUFFICIENT TO ACHIEVE DESIRED ACCURCY");
end