//example 2.3            

//calculate 
//time of water application
//optimum length of each border strip
//dischrge for each border strip

clc;
//Given
d=0.05;//depth of root zone
I=1.25D-5;//average infiltration rate
s=0.0035//slope of border strip
t=d/(I*3600);
t=round(t*1000)/1000;
mprintf("Time of water application=%f hours.",t);

//Part (a)
q=2D-3;//discharge entering water source
qdash=q*100^2*60;
n=0.55425-(0.0001386*qdash);
yo=(n*q/(s^0.5))^0.6;
y=0.665*yo;
L=(q/I)*(1-%e^(-d/y));
L=round(10*L)/10;
mprintf("\nPart (a):");
mprintf("\nOptimum length of each border strip=%f m.",L);

//Part (b)
Lgiven=150//given value of length
//First Trial
q=3D-3;
qdash=q*100^2*60;
n=0.55425-(0.0001386*qdash);
yo=(n*q/(s^0.5))^0.6;
y=0.665*yo;
L=(q/I)*(1-%e^(-d/y));
//second trial
q=3.15D-3;
qdash=q*100^2*60;
n=0.55425-(0.0001386*qdash);
yo=(n*q/(s^0.5))^0.6;
y=0.665*yo;
L=(q/I)*(1-%e^(-d/y));
q=9*Lgiven*q*1000/L;
q=round(q*10)/10;
mprintf("\nPart (b):");
mprintf("\nDischarge for each border strip=%f lps.",q);
