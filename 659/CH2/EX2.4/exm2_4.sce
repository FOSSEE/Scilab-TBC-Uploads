//               Example 2.4
// Sample program 3(exm1.5) discussed in chapter 1 can be convered in to a more flexible intractive program using scanf() function
disp("Enter in single line separted by space");
disp("Input amount,interest rate, and period");
[amount,inrate,period]=scanf("%f %f %d");      //use of scanf()
year=1;
//Computation using while loop
while(year<=period)
         value=amount+inrate*amount;
         printf("%2d Rs %8.2f\n",year,value)
        year=year+1;
        amount=value;
end
