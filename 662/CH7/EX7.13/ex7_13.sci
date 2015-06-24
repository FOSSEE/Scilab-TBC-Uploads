            //Programming Example 7.13
         //calculating depreciation
function[] = main()
    choice = 0;
    answer1 = 'Y';
    answer2 = 'Y';
    while (convstr(answer1, 'u') ~= 'N')
        //read input data
        if (convstr(answer2, 'u') ~= 'N') then
            printf("\n Original Value: ");
            val = scanf("%f");
            printf("Number of years: ");
            n = scanf("%d");
        end
        printf("\n Method: (1-SL  2-DDB  3-SYD) ");
        choice = scanf("%d");
        select (choice)
            case 1 then            //straight-line method
                printf("\nStraight Line Method\n\n");
                sl(val,n);
            case 2 then            //Double declining balance method
                printf("\nDouble-Declining-Balance Method\n\n");
                ddb(val,n);
            case 3 then            //Sum of the years - digits method
                printf("\nSum Of The Years - Digits Method\n\n");
                syd(val,n);
        end
        printf("\n\nAnother Calculation? (Y/N) ");
        answer1=scanf("%1s");
        if (convstr(answer1, 'u') ~= 'N') then
            printf("Enter a new set of data? (Y/N) ");
            answer2 = scanf("%1s");
        end
    end
    printf("\nGoodbye, have a nice day!\n");
endfunction

function[] = sl(val,n)             //straight line method
    deprec = val/n;
    for year = 1:1:n
        val = val-deprec;
        writeoutput(year, deprec, val);
    end
    return;
endfunction

function[] = ddb(val,n)            //double declining balance method
    for year = 1:1:n
        deprec = 2*val/n;
        val= val-deprec;
        writeoutput(year, deprec, val);
    end
    return;
endfunction

function[] = syd(val,n)            //Sum of the years - digits method
    tag= val;
    for year = 1:1:n
        deprec = (n-year+1)*tag/(n*(n+1)/2);
        val = val-deprec;
        writeoutput(year, deprec, val);
    end
    return;
endfunction

function[]  = writeoutput(year,depreciation,value)    //display output data
    printf("End of Year %2d", year);
    printf("    Depreciation: %7.2f", depreciation);
    printf("    Current Value: %8.2f\n", value);
    return;
endfunction

//calling main()
main();
