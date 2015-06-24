clear;
clc;
//Example 3.17
Vbe=0.7;
Vcc=10;
V2=5;
b=100;
R1=100;
R2=50;
Re1=2;
Rth=R2*R1/(R1+R2);
printf('\nThevenin rquivalent resistance=%.1f KOhm\n',Rth)
Vth=(R2/(R1+R2))*Vcc-V2;
printf('\nThevenin equivalent voltage=%.2f V\n',Vth)
//Vth=Ib1*Rth+Vbe+Ie1*Re1-5 and Ie1=(1+b)*Ib1
Ib1=(Vth+5-Vbe)/(Rth+(1+b)*Re1);
printf('\nIb1=%.3f mA\n',Ib1)
Ic1=b*Ib1;
printf('\nIc1=%.3f mA\n',Ic1)
Ie1=(1+b)*Ib1;
printf('\nIe1=%.3f mA\n',Ie1)
//summing the currents at the collector of Q1,Ir1+Ib2=Ic1
//(5-Vc1)/Rc1+Ib2=Ic1
//also Ib2=Ie2/(1+b)=(5-(Vc1+0.7))/(1+b)*Re2
Rc1=5;
Re1=2;
Re2=2;
Rc2=1.5;
Vc1=Rc1*(1+b)*Re2*((5/Rc1)+(4.3/((1+b)*Re2))-Ic1)/(((1+b)*Re2)+Rc1);
printf('\nVc1=%.2f V\n',Vc1)
Ir1=(5-Vc1)/Rc1;
printf('\nIr1=%.3f mA\n',Ir1)
Ve2=Vc1+Vbe;
printf('\nVe2=%.2f V\n',Ve2)
Ie2=(5-Ve2)/Re1;
printf('\nIe2=%.3f mA\n',Ie2)
Ic2=Ie2*b/(1+b);
printf('\nIc2=%.3f mA\n',Ic2)
Ib2=Ie2/(1+b);
printf('\nIb2=%f mA\n',Ib2)
Ve1=Ie1*Re1-5;
printf('\nVe1=%.2f V\n',Ve1)
Vc2=Ic2*Rc2-5;
printf('\nVc2=%.2f V\n',Vc2)
Vce1=Vc1-Ve1;
printf('\nVce1=%.2f V\n',Vce1)
Vec2=Ve2-Vc2;
printf('\nVec2=%.2f V\n',Vec2)
