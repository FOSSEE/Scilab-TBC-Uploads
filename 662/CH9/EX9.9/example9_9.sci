            //programming Example 9.9
//calculate the average of n numbers, 
            //then compute the deviation of each number aboutthe average.

n = 5;
List={3, -2, 12, 4.4, 3.5};

function[] = main()
    Sum = 0;

    //calculate and display the average
    for count = 1:1:n
        Sum=Sum+List(count);
    end
    avg = Sum/n;
    printf("\nThe average is %5.2f\n\n", avg);

    //Calculate and display the deviations about the average
    for count = 1:1:n
        d = List(count)-avg;
        printf("i = %d        X = %5.2f        d = %5.2f\n", count, List(count), d);
    end
endfunction

//calling main()
funcprot(0);
main();