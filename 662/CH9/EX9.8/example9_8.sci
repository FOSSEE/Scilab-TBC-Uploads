            //Programming Example 9.8
            //Deviation about an average
            
function[] = main()        
    Sum=0;

    //read a value for n
    printf("\nHow many numbers will be averaged? ");
    n= scanf("%d");
    printf("\n");

    //read the numbers and calculate their sum
    for count = 1:1:n
        printf("i = %d       X = ", count);       
          //index count start from 1, so no need to denote it as (count+!) element
        List(count) = scanf("%f");
        Sum = Sum+List(count);
    end

    //calculate and display the average
    avg = Sum/n;
    printf("\n The average is %5.2f\n\n", avg);

    //calculate and display the deviations about the average
    for count = 1:1:n
        d = List(count)- avg;
        printf("i = %d       X = %5.2f       d = %5.2f\n", count, List(count), d);
    end
endfunction

//calling main()
funcprot(0);
main();