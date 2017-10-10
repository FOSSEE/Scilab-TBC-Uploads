clc;
Vee=-12; //volt
Re=1500; //ohm
Icq=-(Vee+0.7)/Re; //Ampere
Vcc=12; //volt
Rc=750; //ohm
Vceq=Vcc-Icq*Rc+0.7; //volt
disp('mA',Icq*1000,"Icq=");//The answers vary due to round off error
disp('V',Vceq,"Vceq=");//The answers vary due to round off error
