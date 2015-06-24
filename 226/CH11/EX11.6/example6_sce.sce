//chapter 11
//example 11.6
//page 459
printf("\n")
printf("given")
Yfs=6000*10^-6;R1=100*10^3;R2=47*10^3;vs=50*10^-3;Rd=2.7*10^3;Rl=33*10^3;vs=50*10^-3;rs=600;Rs=Rd;
disp(" CS circuit")
Av=-Yfs*((Rd*Rl)/(Rd+Rl))
Zi=(R1*R2)/(R1+R2)
vi=(vs*Zi)/(rs+Zi)
vo=Av*vi
disp("CG circuit")
Av=Yfs*((Rd*Rl)/(Rd+Rl))
Zi=((1/Yfs)*Rs)/((1/Yfs)+Rs)
vi=(vs*Zi)/(rs+Zi)
vo=Av*vi