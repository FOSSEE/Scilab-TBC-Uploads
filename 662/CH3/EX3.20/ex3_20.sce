                //Example 3.20
//Complex logical Expression
funcprot(0);
printf("\nEnter error value  and count value:");
printf("\nEnter Error: ")
error=scanf("%f");
printf("\n Enter Count: ")
count=scanf("%f");

ans=error >.0001 & count <100;
disp(ans,"error >.0001 & count <100");

ans=error >.0001 | count <100;
disp(ans,"error >.0001 | count <100");