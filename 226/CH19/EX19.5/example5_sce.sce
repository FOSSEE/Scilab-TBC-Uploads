//chapter 19
//example 19.5
//page 824
printf("\n")
printf("given")
Po=4;nt=.8;Vcc=30;Vp=Vcc;Rl=16;
P0=Po/nt
rl=(Vp)^2 /(2*P0)
rl=4*rl
disp("transformer specification Po=4 ,Rl=16 rl=360")
Vce=2*Vcc
Ip=(2*P0)/Vp
Pi=Vcc*.636*Ip
Pt=.5*(Pi-P0)
disp(" transistor specification is Py=.68W  Vce=60 Ip=333mA")