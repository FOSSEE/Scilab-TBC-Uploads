// chapter 1
// example 1.10
//page 34, figure 1.39
Xdc=100;Xac=100;// gain
Vbe=0.7;Vee=12;Vcc=12;//given voltage in volts
Re=8200;Rin=150;Rc=3300;// given resistance in ohm
Hfe=100;Hie=1000;// given
Icq=(Vee-Vbe)/(2*Re+(Rin/Xdc))
Vceq=Vcc+Vbe-Rc*Icq
disp(Icq,Vceq)//operating point(volt,ampere)
Aid=(Hfe*Rc)/(Rin+Hie);// voltage gain
disp(Aid)// result
Ri=2*(Rin+Hie)// input resistance
disp(Ri)//in ohm
Ro=Rc;// output resistance
disp(Ro)//output resistance in ohm