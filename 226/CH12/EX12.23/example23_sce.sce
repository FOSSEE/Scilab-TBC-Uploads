//chapter 12
//example 12.23
//page 528
printf("\n")
printf("given")
hie=1*10^3;hfe=50;hoe=10*10^-6;Cc=5*10^-12;Cp=330*10^-12;Lp=75*10^-6;Rw=1;Rl=5*10^3;fo=1*10^6;K=.015;Ls=50*10^-6;
Zp=Lp/((Cp+Cc)*Rw);
Rc=(1.0/hoe)/1000;
RL=(Zp*Rc)/(Rc+Zp)
disp("voltage gain from the input to the primary memory winding")
Avp=(hfe*RL)/hie
Vsp=K*sqrt(Ls/Lp)
disp("overall voltage gain from the input to teh secondary winding")
Av=Avp*Vsp
Qp=Rc/(2*3.14*fo*Lp)
Ql=471;
Q=(Ql*Qp)/(Ql+Qp)
B=fo/Q;
printf("bandwidth is %dHz\n",B)