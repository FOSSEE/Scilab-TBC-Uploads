//Programming Example 8.12
//Program to calculate successive fibonacci numbers
        //First File

function[]=mainFibonacci()
    printf("How many Fibonacci numbers?");
    n=scanf("%d");
    for(count=1:n)
        printf("\n i= %2d  f=%1d", count, Fibonacci(count));
    end
endfunction

        //calling routine
p=get_absolute_file_path("first_file.sci");
P=p+"second_file.sci";
exec(P);
global first;            // To implement the functionality of static
first="true";
mainFibonacci();