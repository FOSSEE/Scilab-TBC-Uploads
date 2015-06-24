clear;
clc;
disp("--------------Example 10.14---------------")
// function to chexk if k >=7 and display appropriate result
function[] = check (m)
    n=2^m - 1;
    k=n-m;
    if( k > = 7)
        printf(" m = %d :- The code is C(%d, %d) or k = %d and n = %d.\n",m,n,k,k,n);
    else
        printf(" m = %d :- n = %d .k = %d , which is less than 7. Hence doesnt satisfy the condition.\n",m,n,k);
    end
endfunction
// case 1
m=3;
printf("\n1)");
check(m); // calling the function
//case 2
m=4;
printf("\n2)");
check(m);// calling the function


