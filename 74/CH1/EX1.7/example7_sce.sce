//chapter 1
// example 1.7
//page 32,figure 1.36
Vee=12;Vbe=0.7;Rin=100;Re=8400;Rc=3900;Vcc=12;
Xdc=100// dc gain
Icq=(Vee-Vbe)/((Rin/Xdc)+2*Re);
Vceq=Vcc+Vbe-Icq*Rc;
disp(Vceq,Icq)//the DC base point or Q point is at(volt,ampere)
Hie=1100// assuming
Ri=2*(Rin+Hie);//input resistance 
disp(Ri)// input resistance in ohm
Ro=Rc// output resistance