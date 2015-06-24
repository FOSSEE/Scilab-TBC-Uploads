            //Programming Example 6.18
//Repeated Averaging a list of numbers

//read in number of lists
printf("How many lists ? ");
loops=scanf("%d");
//outer loop(process each list of numbers)
for loopcount =1:1:loops
    //initialize and read in a value for n
    Sum=0;
    printf("\n List number %d\nHow many numbers? ",loopcount);
    n=scanf("%d");
    //read in the numbers
    for count=1:1:n
        printf("x= ");
        x=scanf("%f");
        Sum=Sum+x;    
    end            //end inner loop
    //Calculate the average and display the answer
    average=Sum/n;
    printf("\n The average is %f\n", average);
end        //end outer loop