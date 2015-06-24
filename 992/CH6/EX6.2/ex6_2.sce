
//Exa:6.2
clc;
clear;
close;
//Given:
R1=110;//in Kohm
R2=220;//in kohm
R3=470;//in kohm
R4=1;//in Mohm
Rc=R1+R2;
Zin=(R4*1000*R2*R3)/(R2*R3+R3*R4*1000+R4*R2*1000) +R1;
Mmax=Zin/Rc;
printf("\n\n\t maximum modulation index = %f percent",Mmax*100);