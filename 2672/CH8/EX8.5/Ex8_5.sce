//Ex_8_5
clc;
clear;
close;
format('v',6);
//given data : 
VCC=20;//V
Rc=1.5;//kohm
VCE=8;//V
IC=4;//mA
Beta=50;//unitless\
VBE=0.2;//V
disp("Part (a)");
S=12;//Stability factor
IB=IC/Beta;//mA
Re=(VCC-VCE-IC*Rc)/(IB+IC);//kohm
RbBYRe=(S-1)/(1-S/(1+Beta))
Rb=RbBYRe*Re;//kohm
IE=IB+IC;//mA
VBN=VBE+IE*Re;//V
V=VBN+IB*Rb;//V
R1=Rb*VCC/V;//kohm
IR1=(VCC-VBN)/R1;//mA
IR2=IR1-IB;//mA
R2=VBN/IR2;//kohm
disp(R1,"Value of R1(kohm)");
disp(R2,"Value of R2(kohm)");
disp(Re,"Value of Re(kohm)");
disp("Part (b)");
S=3;//Stability factor
IB=IC/Beta;//mA
Re=(VCC-VCE-IC*Rc)/(IB+IC);//kohm
RbBYRe=(S-1)/(1-S/(1+Beta))
Rb=RbBYRe*Re;//kohm
IE=IB+IC;//mA
VBN=VBE+IE*Re;//V
V=VBN+IB*Rb;//V
R1=Rb*VCC/V;//kohm
IR1=(VCC-VBN)/R1;//mA
IR2=IR1-IB;//mA
R2=VBN/IR2;//kohm
disp(R1,"Value of R1(kohm)");
disp(R2,"Value of R2(kohm)");
format('v',5);
disp(Re,"Value of Re(kohm)");
disp(Rb,"Value of Rb(kohm)");
//Answer in the book is wrong.
