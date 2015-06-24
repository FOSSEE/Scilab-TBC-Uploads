

//example 14.10
//design irrigation channel  according to Laecy silt theory
clc;funcprot(0);
//given
Q=15;               //discharge
f=1;                //laecy silt factor
s=1/2;              //channel side slope

V=(Q*f^2/140);
A=Q/V;
R=5*V^2/(2*f);
//using the value of A in equations we get,
//equation in D as
y=poly([-21.765,18.336,-1.73],'x','c');
D=roots(y);
//we get D=9.2368003 and 1.3620436.
//taking
D=1.3620436;
B=18.336-D*2.23;
P=4.75*Q^0.5;
S=1/(3340*Q^(1/6));
B=round(B*10)/10;
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);
 
