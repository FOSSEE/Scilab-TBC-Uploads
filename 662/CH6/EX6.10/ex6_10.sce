            //Programming Example 6.10
//Averaging a list of numbers
count=1;
Sum=0;
//initialize and read in a value for n
printf("How many numbers ? ");
n=scanf("%d");
//read in the numbers
while(count <= n)
    printf("x= ");
    x=scanf("%f");
    Sum=Sum+x;
    count=count+1;
end
//calculate the average and display the answer
average=Sum/n;
printf("\n The average is %f\n", average);