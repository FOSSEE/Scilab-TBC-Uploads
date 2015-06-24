//chapter 3
//example 3.26
//page 130
printf("\n")
printf("given")
E=12;Vf=.7;Rl=47*10^3;f=5000;
Vo=2*(E-Vf)
Il=Vo/Rl
disp(" capacitor discharge time")
t=1/(2*f)
disp(" for 1% ripple allow .5% due to discharge of C2 ,.5%due to discharge of C1")
Vc=(.5*Vo)/100
C2=((Il*t)/Vc)*10^6;
printf(" value of capacitor C2 is %3.2fuF\n",C2)
C1=2*C2;
printf("value of capacitor C1 is %3.2fuF\n",C1)