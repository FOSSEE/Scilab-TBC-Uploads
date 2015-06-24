

//example 14.11
//find channel section and discharge
clc;funcprot(0);
//given
S=1/5000;            //bed slope
s=1/2;               //side slope
f=0.9;                 //laecy silt factor

Q=(f^(5/3)/(3340*S))^6;
R=f^3/(4980*S)^2;
P=4.75*Q^0.5;
A=P*R;
//using the value of A and P in equations we get,
//equation in D as
y=poly([-6.961,9.41,-1.73],'x','c');
D=roots(y);
//we get D=4.5561754 and 0.8831309.
//taking
D=0.8831309;
B=9.41-D*2.23;
B=round(B*100)*100;
D=round(D*100)/100;
Q=round(Q*1000)/1000;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\n Discharge=%f cumecs.",Q);
