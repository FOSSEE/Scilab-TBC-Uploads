//EX3_5 PG-3.28
clc
Es=30;//rms voltage
Rf=2;
Rs=8;
Rl=1e3;//in kohm
Esm=sqrt(2)*Es;//peak value of voltage
Im=Esm/(Rf+Rl+Rs);//peak value of current
Idc=2*Im/%pi;//average current for full wave rectifier
P=Idc^2*Rl;
printf(" Power delivered to the load is %.3f W \n",P)
Vdc_noload=2*Esm/%pi;
printf("\n Vnl=%f \n",Vdc_noload)
Vdc_fullload=Idc*Rl;
printf("\n Vfl=%.2f \n",Vdc_fullload)
%reg=(Vdc_noload-Vdc_fullload)/Vdc_fullload*100;
printf("\n percentage regulation is %f %% \n",%reg)
disp("Efficiency of rectification =(DC output)/(AC output)")
x=(1+(Rf+Rs)/Rl)^(-1);
n=8/%pi^2*x*100;
printf("\n Efficiency of rectification is %.1f %% \n",n)
Irms=Im/sqrt(2);
AC_rating=Es*Irms;
TUF=P/AC_rating;
printf("\n TUF of secondary is %.3f",TUF)
//The exact answer for percentage regulation is 1% not .97% as shown in the book ....
//because in the book it has rounded off the value 27.009 to 27 only
