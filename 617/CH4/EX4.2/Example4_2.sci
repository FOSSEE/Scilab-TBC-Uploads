clc();
clear;
// To find heat changes and temperature change on heating of a concrete wall
b=9;                                 // thickness of the wall in ft
A=5;                                 // area of wall in ft^2
k=0.44;                               // Thermal conductivity in Btu/hr-ft-degF
Cp=.202;                              // Specific heat in Btu/lbm-degF
rho=136;                              // density in lb/ft^3

function[t]=templength(x);
    t = 90 - 8*x-80*x^2; 
    funcprot(0);
endfunction
tgo = derivative(templength,0);      // temperature gradient at x=0ft
tgl = derivative(templength,9/12);    // temperature gradient at x=9/12ft

qo = -k*A*tgo;                        // Heat entering per unit time in Btu/hr
printf("Heat entering per unit time is %.2f Btu/hr \n",qo);
ql = -k*A*tgl;                        // Heat coming out per unit time in Btu/hr
printf(" Heat coming per unit time is %.2f Btu/hr \n",ql);
q3 = qo-ql;                           //Heat energy stored in Btu/hr
printf(" Heat energy stored in wall is %.2f Btu/hr \n",q3);

a=k/(rho*Cp);                         // Thermal diffusivity in ft^2/hr
function[t2]=doublederivative(y);     // derivative of tempearture with respect to length in degF/ft
  t2= -8-160*x;
  funcprot(0);
endfunction;
timeder0=a*derivative(doublederivative,0);         // derivative of temperature  wrt time at x=0 in degF
printf(" Time derivative of temperature wrt time at x=0ft is %.2f degF/hr\n",timeder0);
timeder1=a*derivative(doublederivative,9/12);      // derivative of temperature wrt time at x=9/12 in degF 
printf(" Time derivative of temperature wrt time at x=9/12ft is %.2f degF/hr\n",timeder1);
printf(" Teperature at each part of wall decreases equally");
