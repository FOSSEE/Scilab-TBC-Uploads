//chapter 19
//example 19.22
//page 868
printf("\n")
printf("given")
Vcc=15;Rl=15;Rd=.3;R5=2.2*10^3;R6=33*10^3;C2=3.9*10^-6;C4=100*10^-12;
disp(" power output")
Vp=(Vcc*Rl)/(Rd+Rl)
Ip=Vp/Rl
Po=(Vp*Ip)/2
disp(" voltage gain")
Av=(R5+R6)/R5
disp("cutoff frequency")
f1=1/(2*3.14*C2*R5)
f2=1/(2*3.14*C4*R6)