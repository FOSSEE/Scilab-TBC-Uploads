//Example 3.5 // insertion loss
clc;
clear;
close;
//given data :
n1BYn2=1.48;
NA1=0.2;
n2theta=(5*%pi)/180;
NA2=0.4;
eta1=((16*(n1BYn2)^2)/(1+n1BYn2)^4)*(1-((n2theta/(%pi*NA1))));
L_ang1=-10*log10(eta1);
eta2=((16*(n1BYn2)^2)/(1+n1BYn2)^4)*(1-((n2theta/(%pi*NA2))));
L_ang2=-10*log10(eta2)
disp(L_ang1,"the insertion loss,(dB) = ")
disp(L_ang2,"the insertion loss,(dB) = ")
