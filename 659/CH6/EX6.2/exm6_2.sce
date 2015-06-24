//             Example 6.2
//A program to print multiplication table from 1*1 to 12*10.


disp("           MULTIPLICATION TABLE            ");
disp("-------------------------------------------");
row=1;
while(row<=12)           //Outer loop begins
    column=1;
    while(column<=10)    //Inner loop begins
        y=row*column;
        printf("%4d",y);
        column=column+1;
     end
     row=row+1;
     printf("\n");
end