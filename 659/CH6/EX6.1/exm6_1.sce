//             Example 6.1
//A program to evaluate the equation y=x^n when n is a non-negative integer.

x=input("Enter the value of x:");
n=input("Enter the value of n:");
y=1.0;count=1;    //intialization
//Loop begins
while(count<=n)   //Testing
    y=y*x;
    count=count+1;  //Increamenting
end
//End of loop
printf("x = %f; n = %d; x to power n = %f\n",x,n,y);
