            //Programming Example 6.31
//Averaging a list of nonnegative numbers
navg=0;
Sum=0;
//initialize and read in a value for n
printf("How many numbers ? ");
n=scanf("%d");
//read in the numbers
for count = 1:1:n
    printf("x= ");
    x=scanf("%f");
    if x<0 then
        continue;
    end
    Sum=Sum+x;
    navg=navg+1;
end
//calculate the average and write out the answer
average=Sum/navg;
printf("\n The average is %f\n", average);
