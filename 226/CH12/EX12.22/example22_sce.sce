//chapter 12
//example 12.22
//page 525
printf("\n")
printf("given")
hie=1*10^3;hfe=50;hoe=10*10^-6;Cc=5*10^-12;Cp=330*10^-12;Lp=75*10^-6;Rw=1;Rl=5*10^3;hfb=50;fo=1*10^6;
fo=1/(2*3.14*sqrt(Lp*(Cp+Cc)))
printf("resonance frequency is %3fHz\n",fo)
Zp=Lp/((Cp+Cc)*Rw)
Rc=1/hoe
RL=(Zp*Rc*Rl)/(Rl*Rc+Rc*Zp+Rl*Zp);
RL=4.7*10^3;//as standard value
Av=(hfb*RL)/hie;
printf(" voltage gain is %d\n",Av)
Qp=((Rc*Rl)/(Rc+Rl))/(2*3.14*fo*Lp)
QL=(2*3.14*fo*Lp)/Rw
disp("since QL>Qp")
B=fo/Qp;
printf("bandwidth is %dHz\n",B)
