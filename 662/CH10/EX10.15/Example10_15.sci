        //Example 10.15
      //Reordering a list of strings

function[] = main()
    n = 1;
    printf("Enter each string on a seperate line below\n\n");
    printf("Type END when finished\n\n");
    //read in the list of strings
    first = 1;
    [x]={" "," "," "," "," "," "," "," "," "," "," "};
    //To implement do-while with while,
    // we need to write all statements within while outside once..
    printf("String %d: ", n);
    x(n) = scanf("%s");
    while ( strcmp(x(n), "END") ~= 0)
        n=n+1;
        printf("String %d: ", n);
        x(n) = scanf("%s");
    end
    //adjust the list of strings
    x = reorder(n,x);
    //display the reorder list of strings
    printf("\n\nReordered List of strings: \n");
    for i = 1 : n
        printf("\n String %d: %s", i+1, x(i));
    end
endfunction

function[x] = reorder(n, x)        //rearrange the list of strings
    for item = 1:n
        //find the lowest of all remaining strings
        for i = (item+1): n
            if (strcmp(x(item),x(i) ) > 0) then
                //interchange the two strings
                temp = x(item);
                x(item) = x(i);
                x(i) = temp;
            end
        end
    end
    return x;
endfunction

//calling main()
funcprot(0);
main();