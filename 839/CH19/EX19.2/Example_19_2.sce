//clear//
clear;
clc;

//Example 19.2
//Given
P = 1.2; //[atm]
Tb = 97; //[C]
Td = 105; //[C]
f = 0.6;

xF(1) = 0.33;
xF(2) = 0.37;
xF(3) = 0.30;

//Solution
//(a)

//From Fig. 19.1
K(1) = 2.68/P;
K(2) = 1.21/P;
K(3) = 0.554/P;
//In Eq.(19.12), the right hand side of the equation becomes 
RHS = (xF./(f*(K-1)+1));
RHS2 = sum(RHS)
disp('C',Td,'flash temperature is');
disp('percent',RHS(3),'n-octaneexane','percent',RHS(2),'n-heptane','percent',RHS(1),'n-hexane','Composition of the liquid product is');
y = RHS.*K;
disp('percent',y(3),'n-octane','percent',y(2),'n-heptane','percent',y(1),'n-hexane','Composition of the vapor product is');
  
//(b)
//To determine the temperature of the feed before flashing,
//an enthalpy balance is made using 105 C as the reference temperature.
//The heats of vaporization at 105 C and the average heat capacities of the 
//liquid from 105 to 200 C are obtained from the literature.
Cp = [62,70,78]'; //[cal/mol-C], Cp(1) = n-hexane, Cp(2) = n-heptane, and Cp(3) = n-octane
delta_Hv = [6370,7510,8560]'; //[cal/mol], delta_hv(1) = n-hexane, delta_hv(2) = n-heptane, and delta_hv(3) = n-octane
//Based on liquid at 105 C, the enthalpies of the product are
H_vapor = f*sum((y.*delta_Hv)) //[cal]
H_liquid = 0;
//For the feed
Cp_bar = sum(xF.*Cp) //[cal/mol-C]  
T0 = H_vapor/Cp_bar+Td;
disp('C',T0,'preheat temperature is')
