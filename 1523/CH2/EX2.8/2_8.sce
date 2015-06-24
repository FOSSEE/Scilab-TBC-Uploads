//Network Theorem-1
//pg no.-2.15
//example2.8
a=5;
b=4;
c=3;
//Star to delta conversion
R1=a+b+((a*b)/c);
R2=c+b+((c*b)/a);
R3=a+c+((a*c)/b);
a1=6;
b1=4;
c1=8;
//Satr to delta conversion
R4=a1+b1+((a1*b1)/c1);
R5=c1+b1+((c1*b1)/a1);
R6=a1+c1+((a1*c1)/b1);
x=6.17;
y=9.78;
RAB=(x*y)/(x+y);
printf("\nConverting star network formed by 3 Ohm,4 Ohm ,5 Ohm into equivalent delta network ");
mprintf("\nR1= %.2f Ohm \nR2= %.1f Ohm \nR3 = %.2f Ohm",R1,R2,R3);
printf("\nSimilarly, converting star network formed by 6 Ohm,4 Ohm ,8 Ohm into equivalent delta network");
mprintf("\nR4= %.f Ohm \nR5= %.2f Ohm \nR6 = %.f Ohm",R4,R5,R6);
printf("\n Simplifying the parallel networks, we get \nRAB = %.2f Ohms",RAB);
