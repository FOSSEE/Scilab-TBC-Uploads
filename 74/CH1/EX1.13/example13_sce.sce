// chapter 1
// example 1.13
// page 44, figure 1.52
Rl=%inf;B=100;Rin=0;
Re=1;// let suppose
Iq=4*10^-3;
Vt=26*10^-3;Va2=150;Va4=100;
I2=Iq/2;
I4=Iq/2;
disp(I2,I4)
Gm=Iq/(2*Vt);//parameters
Ro2=Va2/I2;
Ro4=Va4/I4;
Aid=Gm*((Ro2*Ro4)/(Ro2+Ro4));//Aid =Gm(Ro2||Ro4||Rl),Rl=%inf
disp(Aid)//differential mode gain Aid
r=(2*(B*Vt))/Iq// Vt=26mV at 300k
//Re=1/X*Iq and Rc=1/x*Iq/2
//Rc/Re=2
Rc=2*Re;
//assuming 2*(1+B)*Re/(r+Rin)>>>>1
//Acm=((-Gm*Rc)/1+((2*(1+B)*Re)/(r+Rin)));
k=(2*(1+B)*Re)/((r+Rin)/1000)
Acm=-((Gm*Rc)*1000)/k;
disp(Acm)// common mode gain
CMRR=Aid/-Acm;
disp(CMRR)//
CMRRdb=20*log10(CMRR);
disp(CMRRdb)// result is in db