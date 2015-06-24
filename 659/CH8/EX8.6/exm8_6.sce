//                  Example 8.6
//Write a program which would print the alphabet set a to z A to Z in decimal-
//character form.

for c=65:122
    if(c>90&c<97) then
        continue;           //Terminate current iteration
    end
    c1=ascii(c);            //Convert ascii value to character
    printf("|%4d  -  %c\",c,c1); 
end
printf("|\n")