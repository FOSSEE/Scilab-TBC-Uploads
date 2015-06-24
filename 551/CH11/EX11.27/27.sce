clc
// a C + b H + c O2 + (79/21)*c N2 = 8CO2 + 0.5CO + 6.3O2 + x H2O + 85.2N2

a=8+0.5;
c=85.2/(79/21);
x=2*(c-8-0.5/2-6.3);
b=2*x;

disp("(i) Air-fuel ratio =")
AF=(c*32+(79/21)*c*28)/(a*12+b*1);
disp(AF)
disp("kg of air/kg of fuel")

disp("(ii) Per cent theoretical air required for combustion ")
mf_C=12*a/(12*a+b);
mf_H2=b*1/(12*a+b);
air=mf_C*8/3*100/23.3 + mf_H2*8*100/23.3; //air required for complete combustion
percent=AF/air*100;
disp("Per cent theoretical air required for combustion =")
disp(percent)
disp("%")