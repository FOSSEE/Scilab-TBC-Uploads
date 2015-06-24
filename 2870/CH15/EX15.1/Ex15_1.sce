clc;clear;
//Example 15.1

//given data
nO2i=20;
nC8H18i=1;//intial moles of air and octane

//from Table A-1
Mair=29;
MC=12;
MH=2;

//calculations
// Chemical Reaction
// C8H18 + 20(O2+3.76N2)= xCO2 + yH2O + zO2 + wN2
//by elemental balance of moles
x=8;
y=18/2;
z=20*2-2*x-y;
w=20*3.76;
disp(x,'kmoles of CO2');
disp(y,'kmoles of H2O');
disp(z,'kmoles of O2');
disp(w,'kmoles of N2');
//thus equn becomes
// C8H18 + 20(O2+3.76N2)= 8CO2 + 9H2O + 7.5O2 +75.2N2
AF=nO2i*4.76*Mair/(x*MC + y*MH);
disp(AF,'air-fuel ratio of combustion process in kg air/kg fuel')
