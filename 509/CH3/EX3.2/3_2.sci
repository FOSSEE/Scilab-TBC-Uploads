//Chapter 3 Example 2//
clc
clear
//supply voltage=v,from the figure we can get the required values//
v=220;// in volts//
z1=2+%i*8;// in ohms//
x1=8;
z2=-%i*6;
r=5;
//let the equivalent impedence =zeq//
zeq=(z1)*(z2)/(z1+z2);
printf("\n Equivalent impedence = %.2f%.2fi ohms\n",zeq,imag(zeq));
//current in the circuit=i//
i=v/(zeq+r);
printf("\n Load current I = %.2f% +.2fi A\n",i,imag(i));
//power in the 5 ohm resistor=p//
p=abs(i)^2*r;
printf("\n Power in the 5ohm resistor = %.2f W\n",p);
// current in branch ab =i1,current in branch cd=i2//
i1=i*(z2)/(z1+z2);
printf("\n Current in branch ab = %.2f%+.2fi A\n",i1,imag(i1));
printf("\n = %.2f A\n",abs(i1));
i2=i*(z1)/(z1+z2);
printf("\n Current in branch cd= %.2f%.2fi A\n",i2,imag(i2));
printf("\n = %.2f A\n",abs(i2));


