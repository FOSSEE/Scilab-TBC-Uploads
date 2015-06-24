//EX10_13 PG-10.62
clc
disp("Refer to the figure-10.55 and shown")
R1=1e3;
Rf=1e3;//feedback resistance
Vin1=2;
Vin2=1;
Vin3=4;
Vout=-(Vin1+Vin2+Vin3)*Rf/R1
printf("\n output voltage Vout=%.f V \n",Vout)
