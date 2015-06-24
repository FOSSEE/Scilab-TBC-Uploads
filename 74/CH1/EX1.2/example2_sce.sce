// chapter 1
// example 1.2
//page 17. figure 1.21
//given
Rc=4700,Re=2700;// Resistor is in ohm
Vcc=12;Vee=12;// voltage is in volt
Vbe=.7;// assuming Vbe
Ie=(Vee-Vbe)/(2*Re);
disp(Ie)//current is in ampere
Icq=Ie;
disp(Icq)//current is in ampere
Vc=Icq*Rc;
Vce=Vcc+Vbe-Vc;
disp(Vce)