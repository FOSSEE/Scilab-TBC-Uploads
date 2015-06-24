clear;
clc;
Gt=25,Gr=18,r=200,Pr=5*10^-3 ;
Gdt=10^(Gt/10),Gdr=10^(Gr/10);
Pt=Pr*(4*%pi*r)^2 /(Gdr*Gdt);
disp(Pt,'Minimum power received in Watt =');