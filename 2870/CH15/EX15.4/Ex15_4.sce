clc;clear;
//Example 15.4

//given data
Pprod=100;

//from Table A-1
Mair=29;
MC=12;
MH=2;

//from Table A-4
Psat=3.1698;

//calculations
//consedering 100 kmol of dry products
// xC8H18 + a (O2 + 3.76N2) = 10.02CO2 + 0.88C0 + 84.48N2 + bH20
//from mass balamces
a=83.48/3.76;
x=(0.88+10.02)/8;
b=18*x/2;
// 1.36C8H18 + 22.2 (O2 + 3.76N2) = 10.02CO2 + 0.88C0 + 84.48N2 + 12.24H20
// 1 mol conversion
// C8H18 + 16.32 (O2 + 3.76N2) = 7.37CO2 + 4.13C0 + 61.38N2 + 9H20
AF= 16.32*4.76*Mair/(8*MC+9*MH);
disp(AF,'air-fuel ratio of combustion process in kg air/kg fuel')
// C8H18 + ath (O2 + 3.76N2) = 8CO2 + 9H2O + 3.76athN2
ath=8+4.5;
Pth=16.32/ath*4.76/4.76*100;
Pth=ceil(Pth);
disp(Pth,'percentage of theoretical air');
Nprod=7.37+0.65+4.13+61.98+9;
// Nv/Nprod = Pv/Pprod
Pv=Psat;
Nw= (Nprod*Pv-9*Pprod)/(Pv-Pprod);
disp(Nw,'the amount of H2O that condenses as the products in kmol')
