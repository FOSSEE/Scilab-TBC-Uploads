                //Programming Example 9.13
         //Reorder a 1 dimentional, integer array from smallest to largest

function[] = main()
    //read in a value for n
    printf("\n How many numbers will be entered? ");
    n = scanf("%d");
    printf("\n");

    //read in the list of numbers
    for i =1:n
        printf("i = %d    x = ", i+1);
        x(i) = scanf("%d");
    end

    //reorder all array elements
    x=reorder(n,x);

    //display the reordered list of numbers
    printf("\n\nReordered List of numbers:\n\n");
    for i=1:n
        printf("i = %d    x=%d\n", i, x(i));
    end
endfunction

function[x] = reorder(n, x)            //rearrange the list of numbers
    for item=1:n-1
        //find the smallest of all remaining elements
        for i= item+1:n
            if(x(i) < x(item))
               //interchange two element
                temp=x(item);
                x(item)=x(i);
                x(i)= temp;
            end
        end
    end
    return x;
endfunction

//calling main()
funcprot(0);
main();