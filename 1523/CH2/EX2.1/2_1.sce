//Network Theorem-1
//pg no.-2.4
//example2.1
printf("\nConverting the two delta networks formed by resistors 4.5 Ohm,  3Ohm, and 7.5Ohm into equivalent star networks");
a=4.5;
b=3;
c=7.5;
R1= (a*c)/(a+b+c);
R2= (c*b)/(c+b+a);
R3= (a*b)/(a+b+c);
mprintf("\nR1=R6 = %.2f Ohm \nR2=R5 = %.1f Ohm \nR3=R4 = %.1f Ohm",R1,R2,R3);
