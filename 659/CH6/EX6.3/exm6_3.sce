//             Example 6.3
//The program uses a for loop to print the "Power of 2" table for the 
//power 0 to 20, both positive and negative.

disp("-----------------------------------------");
printf(" 2 to power n       n      2 to power -n\n");
disp("-----------------------------------------");
for n=0:20           //Loop begins
    p=2^n;
    q=2^-n;
    printf("%7d     %9d      %10.12f\n",p,n,q);
end                 //Loop ends
