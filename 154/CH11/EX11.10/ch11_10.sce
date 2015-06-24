clc
disp("Problem 11.10")
printf("\n")

printf("Given")
disp("Veff=10V v=10*sqrt(2)*cos(w*t)");
Veff=10;vmag=10*1.414

disp("a)")
Z1=1+%i
[R,Theta]=polar(Z1)
printf("i1=%d*cos(w*t-%d)\n",(vmag/R),Theta)
I1eff=(vmag/R)/1.414
//p1(t)=100*sqrt(2)*cos(wt)*cos(wt-45)
//On solving
disp("p1(t)=50+50*sqrt(2)*cos(2*w*t-45) W")
P1=Veff*I1eff*cos(Theta)
Q1=Veff*I1eff*sin(Theta)
S1=P1+%i*Q1
S1mag=sqrt(P1^2+Q1^2)
pf1=P1/S1mag
printf("P1=%dW\nQ1=%dvar\npf1=%0.4f(lag)\n",P1,Q1,pf1)


disp("b)")
Z2=1-%i
[R,Theta]=polar(Z2)
printf("i2=%d*cos(w*t%d)\n",(vmag/R),Theta)
I2eff=(vmag/R)/1.414
//p2(t)=100*sqrt(2)*cos(wt)*cos(wt+45)
//On solving
disp("p2(t)=50+50*sqrt(2)*cos(2*w*t+45) W")
P2=Veff*I2eff*cos(Theta)
Q2=Veff*I2eff*sin(Theta)
S2=P2+%i*Q2
S2mag=sqrt(P2^2+Q2^2)
pf2=P2/S2mag
printf("P2=%dW\nQ2=%dvar\npf2=%0.4f(lag)\n",P2,Q2,pf2)

disp("c)")
Zmag=(Z1*Z2)/(Z1+Z2)
printf("i=%d*cos(w*t)\n",(vmag/Zmag))
Ieff=(vmag/Zmag)/1.414
//p(t)=100*sqrt(2)*sqrt(2)*cos(wt)*cos(wt)
//On solving
disp("p2(t)=200*cos(w*t)^2 W")
P=Veff*Ieff
Q=0
S=P+%i*Q
Smag=sqrt(P^2+Q^2)
pf=P/Smag
printf("P=%dW\nQ=%dvar\npf=%0.4f\n",P,Q,pf)




