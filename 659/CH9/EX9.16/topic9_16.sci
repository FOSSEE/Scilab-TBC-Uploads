//            Topic 9.16 RECURSION 
//            Page no. 288
//Write a program to calculate factorial of a number using recursion
function[fact1]=factorial1(n)
    fact1=-1
    if(n<0) then
        disp("Please enter positive value[i.e. 0 or greater than 0]  ");
        return;                   //Quits the current function
    end
    if((n==0)|(n==1)) then
        fact1=1;
    else
        fact1=n*factorial1(n-1);   //recursive call to factorial1()
    end
endfunction
n=input("Enter number:");
//calling factorial1() function inside printf()
printf("Factorial of %d  = %d",n,factorial1(n));