
clc;
//e.g 18.13
Vcc=12;
Rc=3.3*10**3;
Re=100;
Ie=2*10**-3;
Vbe=0.7;
alpha=0.98;
Ic=alpha*Ie;
disp('mA',Ic*10**3,"Ic=");
Vb=Vbe+(Ie*Re);
disp('V',Vb*1,"Vb=");
Vc=Vcc-(Ic*Rc);//collector to emitter voltage
disp('V',Vc*1,"Vc=");
R2=20*10**3;
IR2=Vc/R2;
disp('mA',IR2*10**3,"IR2=");
Ib=Ie-Ic;
disp('mA',Ib*10**3,"Ib=");
IR1=IR2+Ib;
disp('mA',IR1*10**3,"IR1=");
R1=(Vc-Vb)/IR1;
disp('kohm',R1*10**-3,"R1=");
