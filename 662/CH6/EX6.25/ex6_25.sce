            //Programming Example 6.25
//Variation of Switch statement
printf("Enter integer vlaue for flag : ");
flag=scanf("%d");
printf("Enter vlaue of x: ");
x=scanf("%f");
select (flag)                //here select is equivalent to switch statement
    case -1 then
        y=abs(x);
        printf("y = %f", y);
    case 0 then
        y=sqrt(x);
        printf("y = %f", y);
    case 1 then
        y=x;
        printf("y = %f", y);
    case 2 then
        y=2*(x-1);
        printf("y = %f", y);
    case 3 then
        y=2*(x-1);
        printf("y = %f", y);
    else
        y=0;
        printf("y = %f", y);
end
