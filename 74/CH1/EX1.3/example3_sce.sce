// chapter 1
// example 1.3
//page 18
Rin1=100;Rin2=100;Re=2.7*10^3;Rc=4.7*10^3;
hfe=100;hie=1000;hoe=0;
Aid=(hfe*Rc)/(Rin1+hie);//Differential gain
disp(Aid)
Acm=((2*Re*hoe-hfe)*Rc)/(2*Re*(1+hfe)+(Rin1+hie)*(1+2*Re*hoe));//comman mode gain
Acm=-Acm// neglecting negative sign
disp(Acm)
CMRR=Aid/Acm
CMRR=20*log10(CMRR);
disp(CMRR)
Rin=2*(Rin1+hie)//input resistance
Ro=Rc//output resistance