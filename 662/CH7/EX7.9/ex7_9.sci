                //Programming Example 7.9
//determine the largest of three integer quantities

function[z] = maximum(x ,y)
    if (x >= y) then
        z = x;
    else
        z = y;
    end
endfunction

function[] = main()
//read the integer quantities
printf("\nEnter integer quantities ");
    printf("\na= ");
    a= scanf("%d");
    printf("\nb= ");
    b= scanf("%d");
    printf("\nc= ");
    c= scanf("%d");
//calculate and display the maximum value
    d = maximum(a,b);
    printf("\n\nmaximum = %d ", maximum(c,d));
endfunction

//calling main function.
main();
