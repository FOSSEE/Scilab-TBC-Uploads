

//example 14.32
//calculate dimension of channel if it is design on the basis of Laecy theory and Kennedy's theory
clc;funcprot(0);
//given
Q=40;        //discharge
f=1;         //silt factor

//Laecey's theory
V=(Q*f/140)^(1/6);
A=Q/V;
P=4.75*Q^0.5;
D=(P-(P^2-6.944*A)^0.5)/3.472;
B=P-2.236*D;

R=5*V^2/(2*f);
S=f^(5/3)/(3340*Q^(1/6));
B=round(B);
D=round(D*100)/100;
mprintf("\n\nBy Laecey theory:");
mprintf("\nBed slope=%f.",S);
mprintf("\nWidth of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);

//Kennedy's theory
r=B/D;        
m=1;         //critical velocity ratio
N=0.0225;   //rogosity coefficient
//using equation of area of trapezoidal section;Vo=0.55mD^0.64 and Q=A*Vo

D=(Q/8.058)^(1/2.64);
B=r*D;
B=round(B);
D=round(D*100)/100;
mprintf("\n\nBy Kennedy theory:");
mprintf("\nWidth of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);

