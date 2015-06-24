clear;
clc;
//Example 14.8
Is1=10^-14;
Is2=1.05*10^-14;
Vt=0.026;
Vos=Vt*log(Is2/Is1);
printf('\nthe offset voltage =%fV\n',Vos)
