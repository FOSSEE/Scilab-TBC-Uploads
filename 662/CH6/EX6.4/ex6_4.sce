                            //Example 6.4
//Compound Statements

//elementary compound statement
printf("Enter an character: ");
lower=ascii(scanf("%1c"));
upper=ascii(convstr(ascii(lower),'u'));
disp(ascii(upper));

//complicated compound statement
Sum=0;
sumsq=0;
sumsqrt=0;
printf("Enter an number: ");
x=scanf("%f");             //input("Enter a number");

while (x ~= 0) then
    printf("\nEnter 0 to stop.\n");
    Sum=Sum+x;
    sumsq=sumsq + (x*x);
    printf("Enter an number: ");
    sumsqrt=sumsqrt+sqrt(x);
    x=scanf("%f"); 
end
