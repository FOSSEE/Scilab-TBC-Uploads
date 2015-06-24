

//example 14.17
//design a channel for non-alluvial deposites
clc;funcprot(0);
//given
Q=45;               //discharge
S=1/4000;           //bed slope
v=0.9;              //permissible velocity
N=0.025;            //rogosity coefficient

A=Q/v;
R=(v*N/S^0.5)^1.5;
P=A/R;
//let us provide a trapezoidal section
//from equation of Area and Perimeter of trapezoid
y=poly([50,-29.45,1.828],'x','c');
D=roots(y);
//from which we get D=14.181815 and 1.9286881
//taking
D=1.9286881;
B=P-2*1.41*D;
D=round(D*100)/100;
mprintf("Width of channel section=%i m.",B);
mprintf("\nDepth of channel section=%f m.",D);

