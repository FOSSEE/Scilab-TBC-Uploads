            //Example 14.2
         //Generating Fibonacci Numbers

function[] = main()
    n=23;
    loopmax = 10000000;
    //tag the starting time
    realtimeinit(1);
    realtime(0);
    start = now();
    //do multiple loops
    for loop = 1:loopmax
        f1 = 1;
        f2 = 1;
        //generate the first n fibonacci numbers
        for count = 1:n
            if (count < 3) then
                f = 1;
            else
                f = f1+f2;
            end
            f2 = f1;
            f1 = f;
        end
    end
    //adjust the counter and tag the completion time
    count =count-1;
    finish = now();
    
    difference = finish - start;
    //display the output
    printf("i = %d    F = %d\n", count, f);
    printf("elapsed time: %.01f seconds", difference);
endfunction

//calling main()
funcprot(0);
main();