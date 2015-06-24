clear;
clc;
//Example 10.9
Idss1=2;
Idss2=1;
Vp1=-1.5;
Vp2=Vp1;
//lambda=y
y1=0.05;
y2=y1;
V2=-5;
Vds=1.5;
Vsmin=Vds+V2;
printf('\nminimum value of Vs=%.2f V\n',Vsmin)
Io=Idss2*(1+y1*Vds);
printf('\noutput current=%.2f mA\n',Io)
Vgs1=(1-sqrt(Io/Idss1))*Vp1;
printf('\ngate to source voltage of Q1=%.2f V\n',Vgs1)
V1=Vgs1+Vsmin;
printf('\nV1=%.2f V\n',V1)
