//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 9


clear;
clc;


//Given:
P = 101.3; //total pressure over the system (kPa)
T = [371.4 378 383 388 393 398.6];
Pa = [101.3 125.3 140.0 160.0 179.9 205.3];
Pb = [44.4 55.6 64.5 74.8 86.6 101.3];

//To construct boiling point and equilibrium point diagram
for i = 1:6
    xa(i) = (P-Pb(i))/(Pa(i)-Pb(i)); //Using eq. 8.51
    ya(i) = xa(i)*(Pa(i)/P); //Using eq. 8.54
end

//(a).
//To construct boiling point diagram
clf
plot(xa,T);
plot(ya,T);
xtitle("Boiling Point diagram","xa and ya","Temperature");

//(b).
//To construct the equilibrium diagram
xset("window',1);
clf
plot(ya,xa);
xtitle("Equilibrium Diagram","xa","ya");

//(c).
mprintf('(c). The given subpart is theoretical and does not involve any numerical computation');

//end