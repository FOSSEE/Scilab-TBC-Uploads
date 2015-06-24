

//example 14.21
//design a channel using Laecy theory
clc;funcprot(0);
//given
Q=40;               //discharge
s=1;                //side slope
md=0.8;             //average size of base material

f=1.76*(md)^0.5;
V=(Q*f^2/140)^(1/6);
A=Q/V;
P=4.75*Q^0.5;
//from equations of Area and perimeter of trapezoidal section;we get
y=poly([42.41,-30.04,1.828],'x','c');
D=roots(y);
//we get D=14.873416 and 1.5598447
//taking
D=1.5598447;
B=A/D-D;
R=5*V^2/(2*f);
S=f^(5/3)/(3340*Q^(1/6));
B=round(B*100)/100;
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);

