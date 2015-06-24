//                 Example:7.1
//Write a program using single-subscripted variable to evaluate:
// sum of squares of 10 numbers.The values x1,x2,...are read from the terminal.

//Reading values into array
disp("ENTER 10 REAL NUMBERS[Each in newline]");
total=0;
for i=1:10
    x(i)=input(" ");
    total=total+x(i)^2; //Computation of total
end
//Printing of x(i) values and total
for i=1:10
    printf("x(%2d) =%5.2f\n",i,x(i));
end
printf("Total =%.2f",total);