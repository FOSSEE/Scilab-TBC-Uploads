//chapter 19
//example 19.18
//page 860
printf("\n")
printf("given")
Ismin=1.8*10^-3;Ismax=3.4*10^-3;R7=820;R5=390;R6=18*10^3;Vi=100*10^-3;Rl=10;
Vgsmin=Ismin*R7
Vgsmax=Ismax*R7
Acl=(R5+R6)/R5
Vp=Acl*Vi
Ip=Vp/Rl;
printf("peak output current is %3.3fA\n",Ip)
Po=(Vp*Ip)/2;
printf("peak output power is %3.2fW\n",Po)