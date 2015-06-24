clear;
clc;
V=6.6e3;
r=5e6;
X=.12;
F=r/X;
I=(F/V)/(%i*sqrt(3));
Ir=real(I);
Ii=imag(I);
Imod=sqrt((Ir^2)+(Ii^2));
Iangle=atand(Ir/Ii)-90;
F=fix(F/1e5)*1e5;
Imod=fix(Imod);
mprintf("Method 1 \nthe value of fault MVA=%fMVA \n the fault current is = %d /_%d A\n",(F/1e6),Imod,Iangle);
//method 2
Vbase=V/sqrt(3);
Ifaultpu=1/(X*%i);
Ibase=r/(Vbase*3);
Ifault=Ifaultpu*Ibase;
P=sqrt(3)*Ifault*V;
Ir=real(Ifault);
Ii=imag(Ifault);
Imod=sqrt((Ir^2)+(Ii^2));
Pr=real(P);
Pi=imag(P);
Pmod=sqrt((Pr^2)+(Pi^2));
Pangle=atand(Pr/Pi)-90;
Pmod=fix(Pmod/1e5)*1e5;
Imod=fix(Imod);
mprintf("From method 2\n the value of fault MVA=%f /_%d MVA \n the fault current is = %d A",(Pmod/1e6),Pangle,Imod);
//method 3
v1=6.4e3;
I=(v1/V)/X;
Ifault=Ibase*I;
p=sqrt(3)*Ifault*v1;//the difference in result is due to erroneous calculation in textbook.
p=round(p/1e5)*1e5;
mprintf("\nthe new fault current at 6.4kV is = %fA \n the newfault power at service voltage is =%fMVA",Ifault,p/1e6);
disp("the difference in result is due to erroneous calculation in textbook.");
