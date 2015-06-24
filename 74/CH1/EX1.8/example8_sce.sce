//chapter 1
// example 1.8
// page 33, figure 1.37:
Xdc=100;Xac=100;//AC and DC gain
Vbe=0.7;Vee=10;Vcc=10;// voltage is in volts
Re=4700;Rin=50;Rc=2700;//resistance in ohm
Hfe=100;Hie=1100// assuming
Icq=(Vee-Vbe)/(2*Re+(Rin/Xdc));
disp(Icq)//result current
Vceq=Vcc+Vbe-Rc*Icq;
disp(Vceq)// result voltage
Aid=(Hfe*Rc)/(2*(Rin+Hie));//voltage gain Aid
disp(Aid)
Ri=2*(Rin+Hie)// input resistance
disp(Ri)//in ohm
Ro=Rc;// output resistance
disp(Ro)//ohm