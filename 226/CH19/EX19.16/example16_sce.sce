//chapter 19
//example 19.16
//page 856
printf("\n")
printf("given")
Rl=8;Po=6;vs=.1;hFE=1000;Vce=2;f=50*10^3;Vd1=.7;
Vp=sqrt(2*Rl*Po)
Ip=Vp/Rl
R6=.1*Rl
R7=R6;
Vcc=Vp+Ip*R6+Vce
Ib=Ip/hFE
I4=2*10^-3;
R4=(Vcc-Vd1-Vd1)/I4
R8=.5*R4
Acl=Vp/vs
R3=100*10^3;
R2=R3/(Acl-1)
SR=(2*3.14*f*Vp)*10^-6;
printf(" slew rate is %3.2fV/us\n",SR)