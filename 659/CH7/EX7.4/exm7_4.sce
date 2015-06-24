//                    Example:7.4
//Write a program to compute and print a multiplication table for numbers 1 to 5

ROWS=5;COLUMNS=5;
disp("MULTIPLICATION TABLE");
printf("*|")
for j=1:COLUMNS
    printf("%4d",j);
end
disp("________________________");
for i=1:ROWS
    printf("%1d|",i);
    for j=1:COLUMNS
        product(i,j)=i*j;        //Calculate the product
    printf("%4d",product(i,j));  //Print the product
    end
    printf("\n");
end