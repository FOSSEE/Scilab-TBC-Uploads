//                     Example 5.7
// The  program evaluates the square root for five numbers.

count=1;
printf("Enter FIVE real values\n");
while(count<=5)
    x=scanf("%f");
    if(x<0) then
        printf("Value - %d is negative\n",count);
    else
        y=sqrt(x);            //Calculate square root
        printf("%f\t%f\n",x,y); //Print result
    end
    count=count+1;
end
printf("End of computation");