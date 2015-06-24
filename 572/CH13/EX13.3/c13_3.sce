//(13.3)  A natural gas has the following molar analysis: CH4, 80.62%; C2H6, 5.41%; C3H8, 1.87%; C4H10, 1.60%; N2, 10.50%. The gas is burned with dry air, giving products having a molar analysis on a dry basis: CO2, 7.8%; CO, 0.2%; O2, 7%; N2, 85%. (a) Determine the air–fuel ratio on a molar basis. (b) Assuming ideal gas behavior for the fuel mixture, determine the amount of products in kmol that would be formed from 100 m3 of fuel mixture at 300 K and 1 bar. (c) Determine the percent of theoretical air.

//solution

//part(a)
//The chemical equation
//(.8062CH4 + .0541C2H6 + .0187C3H8 + .0160C4H10 + .1050N2) + a(O2 + 3.76N2)  ---->  b(.078CO2 + .002CO + .07O2 + .85N2) + c H2O

//using mass conservation
b = [.8062 + 2*.0541 + 3*.0187 + 4*.0160]/(.078 + .002)
c = [4*.8062 + 6*.0541 + 8*.0187 + 10*.0160]/2
a = {b*[2*.078+.002+2*.07] + c}/2

//The air–fuel ratio on a molar basis is
AFbar = a*(1+3.76)/1
printf('the air-fuel ratio on a molar mass basis is:  %f',AFbar)

//part(b)
p = 1                                                                           //in bar
V = 100                                                                         //in m^3
Rbar = 8314                                                                     //in N.m/kmol.K
T = 300                                                                         //in kelvin
//The amount of fuel in kmol
nF = (p*10^5*V)/(Rbar*T)
//the amount of product mixture that would be formed from 100 m3 of fuel mixture is
n = nF*(b+c)
printf('\n\nthe amount of products in kmol that would be formed from 100 m3 of fuel mixture at 300 K and 1 bar is:  %f',n)

//part(c)
//The balanced chemical equation for the complete combustion of the fuel mixture with the theoretical amount of air is
//(10.8062CH4 + 0.0541C2H6 + 0.0187C3H8 + 0.0160C4H10 + 0.1050N2) + 2(O2 + 3.76N2)   ----> 1.0345CO2 + 1.93H2O + 7.625N2
//The theoretical air–fuel ratio on a molar basis is
AFbartheo = 2*(1+3.76)/1
//The percent theoretical air is
Ta = AFbar/AFbartheo
printf('\n\nthe percent of theoretical air is:  %f',Ta*100)














