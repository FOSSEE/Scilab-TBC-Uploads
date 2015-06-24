//Ex_8_4
clc;
clear;
close;
format('v',6);
//given data : 
Beta=50;//unitless
VBE=0.7;//V
VCC=22.5;//V
Rc=5.6;//kohm
VCE=12;//V
IC=1.5;//mA
S=3;//Stability factor(S<=3)
Rec=(VCC-VCE)/IC;//kohm(Rec=Re+Rc)
Re=Rec-Rc;//kohm
RbBYRe=(S-1)/(1-S/(1+Beta))
Rb=RbBYRe*Re;//kohm
IB=IC/Beta;//mA
V=IB*Rb+VBE+(IB/1000+IC)*Re;//V
R1=Rb*VCC/V;//kohm
R2=R1*V/(VCC-V);//kohm
disp(Re,"Value of Re(kohm)");
disp(R1,"Value of R1(kohm)");
disp(R2,"Value of R2(kohm)");
//Answer in the book is wrong for R1.
