clc;clear;
//Example 15.8
//this invovles EES hence the below code explains a approach with approximation

//calculations

//part - a
//C8H18 + 12.5 (O2 + 3.76N2) = 8CO+ 9H2O + 47N2
//from std. values of heat of formation and ideal gasses in Appendix
//octane as oc
hfoc=-249950;
//oxygen as o
hfo=0;
h298o=8682;
//nitrogen as n
hfn=0;
h298n=8669;
//water as w
hfw=-241820;
h298w=9904;
//carbondioxide as c
hfc=-393520;
h298c=9364;
//x refers to 8hCO2 + 9hH20 + 47hN2
xac=1*(hfoc)+8*(h298c-hfc)+9*(h298w-hfw)+47*(h298n-hfn);
//from EES the Tprod is determined by trial and error
//at 2400K
x2400=5660828;
//at 2350K
x2350=5526654;
//the actual value of x is xac and T can be determined by interpolation
Tprod=(xac-x2350)*(2400-2350)/(x2400-x2350)+2350;
Tprod=ceil(Tprod);
disp(Tprod,'adiabatic flame temperature for complete combustion with 100 percent theoretical air,in K');

//part - b
//C8H18 + 50 (O2 + 3.76N2) = 8CO+ 9H2O + 37.5O2 + 188N2
//solved similarly using EES and approximation and interpolation
//similarly we can solve the part - c 
//the above concept is applied
