            //Programming Example 9.11
            //passing array to function and altering values of array elements

function[] = main()
    printf("\n From main, before calling the function: \n");
    for count = 1:3 
                  //Here it is 1:3 as in c it starts frm 0 to 2, index 0 is invalid in scilab
        a(count)=count;
        printf("a[%d] = %d\n", count, a(count));
    end

    a= modify(a);

    printf("\nFrom main, after calling the function:\n");
    for count = 1:3
        printf("a[%d] = %d\n", count, a(count));
    end
endfunction

function[a] = modify(a)            //function definition
    printf("\n From the function, after modifying the values:\n");
    for count = 1:3
        a(count)=-9;
        printf("a[%d] = %d\n", count, a(count));
    end
    return a;
endfunction

//calling main()
funcprot(0);
main();