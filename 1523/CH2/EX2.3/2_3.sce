//Network Theorem-1
//pg no.-2.7
//example2.3
a=4;
b=3;
c=6;
//star to delta conversion
R1=c+a+((a*c)/b);
R2=c+b+((c*b)/a);
R3=a+b+((a*b)/c);
x=1.35;
y=0.9;
RAB=(c*(x+y))/(c+x+y);
printf("\nR1 = %.f Ohm",R1);
printf("\nR2 = %.1f Ohm",R2);
printf("\nR3 = %.f Ohm",R3);
printf("\nThe network can be simplified as, \nRAB = %.2f Ohm",RAB);
