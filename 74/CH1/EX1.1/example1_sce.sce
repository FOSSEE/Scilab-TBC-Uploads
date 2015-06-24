// chapter 1
//example 1.3
// page no.18,figure no.1.22
//given
Rin1=100;Rin2=100;
Re=2700;Rc=4700;
Hfe=100;
Hie=1000;Hoe=0;
Aid=(Hfe*Rc)/(Rin1+Hie);
disp(Aid)//differential gain
//Acm=(2*Re*Hoe-Hfe)*Rc/(2*Re(1+Hfe)+(Rin1+Hie)(1+2*Re*Hoe)),and Hoe=0
x=2*Re*1+2*Re*Hfe+Rin1+Hie;
Acm=-(Hfe*Rc)/x;
disp(Acm)//neglecting the negative value.taking mod of Acm
Acm=-(Acm)
CMRR=20*log10(Aid/Acm);
disp(CMRR)//is in db
Rin=2*Rin1+2*Hie;
disp(Rin)//input resistance
Ro=Rc
disp(Ro)//output resistance