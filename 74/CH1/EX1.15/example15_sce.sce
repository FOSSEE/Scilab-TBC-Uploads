//chapter 1
// example 1.15
//page 47, figure 1.57
Bdc=100;Bac=100;
Vbe=.715;
R=5600;
Vr=-(Vbe-10);
Ir=Vr/R;// Ir=Ic+Ib=Vr/R
disp(Ir)
Ic=Ir*(Bdc/(1+Bdc));//Ir=Ic+Ib=Ic+Ic/Bdc
disp(Ic)//ampre
Ic2=Ir
Ic3=Ir
Ic4=Ir