//Programming Example 8.7
//Program to calculate successive fibonacci numbers

funcprot(0);

function[]= main()
    printf("How many fibonacci numbers?");
    n=scanf("%d");
    first_call="true";
    for count=1:n
        printf("\ni = %2d  F = %1d", count, fibonacci(count));
        first_call="false";
    end
endfunction

function[F]=fibonacci(count)
    //calculate a fibinacci number using the formulas
    //F=1 for i<3, and F=F1+f2 for i>=3
    global F1
    global F2
    //as static variable sre not available in scilab ,
    //hence their functionality is made through -
    //global and first_call variables in this program.
    if(first_call=="true") then 
        F1=1;
        F2=1;
    end
    if count < 3 then
        F=1;
    else
        F=F1+F2;
    end
    F2=F1;
    F1=F;
endfunction

//calling routine      
main()