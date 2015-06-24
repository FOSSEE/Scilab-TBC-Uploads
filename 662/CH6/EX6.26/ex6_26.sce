                    //Example 6.26
//Calculating Depreciation

choice=0;
while (choice~=4)
    //read input data
    printf("\n Method: (1-SL    2-DDB    3-SYD    4-END)    ");
    choice=scanf("%d");
    if (choice >= 1 & choice <=3)
        printf("Original value: ");
        val=scanf("%f");
    
        printf("Number of years: ");
        n= scanf("%f");
    end

    select (choice)
        case 1 then            //Straight line method
            printf("\nStraight line method\n\n");
            deprec=val/n;
            for year= 1:1: n
                val=val-deprec;
                printf("End of year %2d", year)    ;
                printf("            Depreciation: %7.2f", deprec);
                printf("            Current value : %8.2f\n",val);
            end
        case 2 then            //double declining balance method
            printf("\nDouble Declining Balance Method\n\n");
            for year= 1:1: n
                deprec=2*val/n;
                val=val-deprec;
                printf("End of year %2d", year)    ;
                printf("            Depreciation: %7.2f", deprec);
                printf("            Current value : %8.2f\n",val);
            end    
        case 3 then             //sum of the years'- digits method
            printf("\nSum of The Years-Digits  Method\n\n");
            tag=val;
            for year= 1:1: n
                deprec=(n-year+1)*tag/(n*(n+1)/2);
                val=val-deprec;
                printf("End of year %2d", year)    ;
                printf("            Depreciation: %7.2f", deprec);
                printf("            Current value : %8.2f\n",val);
            end 
        case 4 then            //end of computation
            printf("\nGoodbye, have a nice day!\n");
        else                        //generate error message
            printf("\nIncorrect data entry     please try again\n");
    end            //end select
end           //end while
