clear;
clc;
//Example 10.12
//lambda=y
yn=0.01;
yp=0.01;
Vtn=1;
Kn=1;
Iref=0.5;
gm=2*sqrt(Kn*Iref);
printf('\ntransconductance =%.2fmA/V\n',gm)
go=yn*Iref;
printf('\nsmall signal transistor conductance=%.4f mA/V\n',go)
go2=go;
//for Rl=infinity
Av=-gm/(go+go2);
printf('\nvoltage gain=%.2f \n',Av)
Rl=100;//Kohm
gl=0.01;
Av=-gm/(go+gl+go2);
printf('\nvoltage gain=%.2f \n',Av)
