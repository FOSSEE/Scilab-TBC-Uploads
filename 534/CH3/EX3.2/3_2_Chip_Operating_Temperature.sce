clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.2   Page 107 \n'); //Example 3.2
// Chip Operating Temperature

Tf = 25+273; //[K] - Temperature of Fluid Flow

L=.008;    //[m] - Thickness of Aluminium 
k=239;  //  [W/m.K] Effective Thermal Conductivity of Aluminium
Rc=.9*10^-4;    //[K.m^2/W]    Maximum permeasible Resistane of Epoxy Joint
q=10^4;    //[W/m^2]    Heat dissipated by Chip
h=100;    //[W/m^2.k] - Thermal Convectivity from chip to air

//Temperature of Chip
//q=(Tc-Tf)/(1/h)+(Tc-Tf)/(Rc+(L/k)+(1/h))

Tc = Tf + q*(h+1/(Rc+(L/k)+(1/h)))^-1;

printf("\n\n Temperature of Chip = %.2f degC",Tc-273);
printf("\n Chip will Work well below its maximum allowable Temperature ie 85 degC")
//END