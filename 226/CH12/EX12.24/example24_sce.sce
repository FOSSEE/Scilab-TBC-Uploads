//chapter 12
//example 12.24
//page 530
printf("\n")
printf("given")
f=1*10^6;L2=50*10^-6;K=.015;L1=75*10^-6;rs=5;Rw=1;Lp=100*10^-6;Cp=330*10^-12;Cc=5*10^-12;Rc=100*10^3;hfe=50;hie=1*10^3;
C2=1/(((2*3.14*f)^2)*L2)
M=K*sqrt(L1*L2)
Rs=(((2*3.14*f)^2)*(M)^2)/rs
Rp=Rs+Rw
Zp=Lp/((Cp+Cc)*Rp)
Rl=(Zp*Rc)/(Zp+Rc)
disp("voltage gain from the input to primary winding")
Avp=(hfe*Rl)/hie
Vsp=12.2*10^-3;
Vos=((2*3.14*f)*L2)/rs
disp("overall voltage gain from the input to secondary winding ")
Av=Avp*Vos*Vsp