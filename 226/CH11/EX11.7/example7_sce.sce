//chapter 11
//example 11.7
//page 462
printf("\n")
printf("given")
Crss=1*10^-12;Ciss=5*10^-12;Yfs=2500*10^-6;Yos=75*10^-6;Rd=5.6*10^3;Rl=100*10^3;R1=3.3*10^6;R2=1*10^6;rs=600;
Cgd=Crss;
Cgs=Ciss-Crss
Av=Yfs*(((1/Yos)*Rd*Rl))/((Rd*Rl+(1/Yos)*Rd+(1/Yos)*Rl))
Cin=Cgs+(1+Av)*Cgd
Zi=(R1*R2)/(R1+R2)
f2=1/(2*3.14*Cin*((rs*Zi)/(rs+Zi)))