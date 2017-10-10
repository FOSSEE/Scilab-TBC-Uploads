close();
clear;
clc;
Vbe = 0.7;
alpha = 0.99;
Icbo = 0;
Vb = 1;//V
Re = 100;
Rc = 1000;
Vcc = 10;
Icbo = 0;
Beta = alpha/(1-alpha);
//Part (i)
Rb = 1000;
Ic = Beta*(Vb-Vbe)/(Rb+(1+Beta)*Re)+(Rb+Re)/(Rb+(1+Beta)*Re)*(1+Beta)*Icbo;
//Quiescent value of Vce is
Vce1 = Vcc - Ic*(Rc+Re);
//Part (ii)
Rb = 10000;
Ic = Beta*(Vb-Vbe)/(Rb+(1+Beta)*Re)+(Rb+Re)/(Rb+(1+Beta)*Re)*(1+Beta)*Icbo;
//Quiescent value of Vce is
Vce2 = Vcc - Ic*(Rc+Re);
mprintf('(i)Quiescent value of Vce = %0.2f V\n(ii)Quiescent value of Vce = %0.4f V',Vce1,Vce2);
 