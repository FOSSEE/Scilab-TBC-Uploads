                //Programming Example 9.12
            //passing a variable along with an array to the function

a = 1;            //global variable

function[] = main()
    b = 2;            //local variable
    printf("\nFrom main, before calling the function: \n");
    printf("a = %d        b = %d\n", a, b);
    for count = 1:3
        c(count) = 10*(count+1);
        printf("c[%d] = %d\n", count, c(count));
    end

    c=modify(b,c);
    printf("\n From main, after calling the function: \n ");
    printf("a = %d        b = %d\n", a, b);
    for count =1:3
        printf("c[%d] = %d\n", count, c(count));
    end
endfunction

function[c] = modify(b,c)        //function definition
    printf("\n From the function, after modifying the values: \n");
    a=-999;
    b=-999;
    printf("a = %d        b = %d\n", a, b);
    for count =1:3
        c(count)=-9;
        printf("c[%d] = %d\n", count, c(count));
    end
    return c;
endfunction

//calling main()
funcprot(0);
main();