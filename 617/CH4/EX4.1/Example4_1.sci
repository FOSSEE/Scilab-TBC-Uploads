clc();
clear;

// To find heat changes and temperature change on heating of a concrete wall

b=9;                                   // Thickness of the wall in ft
A=5;                                   // Area of wall 
k=0.44;                                // Thermal conductivity in Btu/hr-ft-degF
Cp=.202;                               // Specific heat in Btu/lbm-degF
rho=136;                               // Density in lb/ft^3

function[t]=templength(x);             // Temperature function in terms of length                                                  
    t = 90 - 80*x +16*x^2 +32*x^3 -25.6*x^4;
    funcprot(0);
endfunction
tgo = derivative(templength,0);        // Temperature gradient at x=0ft
tgl = derivative(templength,9/12);     // Temperature gradient at x=9/12ft

qo = -k*A*tgo;                         // Heat entering per unit time in Btu/hr
printf("Heat entering per unit time is %.2f Btu/hr \n",qo);
ql = -k*A*tgl;                         // Heat coming out per unit time in Btu/hr
printf(" Heat coming per unit time is %.2f Btu/hr \n",ql);
q3 = qo-ql;                            //Heat energy stored in Btu/hr
printf(" Heat energy stored in wall is %.2f Btu/hr \n",q3);

a=k/(rho*Cp);                               // Thermal diffusivity
function[t2]=doublederivative(y);           // Derivative of tempearture with respect to length in degF/ft
  t2= -80+32*y+96*y^2-102.4*y^3;
  funcprot(0);
endfunction
timeder0=a*derivative(doublederivative,0);  // derivative of temperature  wrt time at x=0 in degF
printf(" Time derivative of temperature wrt time at x=0ft is %.2f degF/hr\n",timeder0);
timeder1=a*derivative(doublederivative,9/12);      // derivative of temperature wrt time at x=9/12 in degF 
printf(" Time derivative of temperature wrt time at x=9/12ft is %.2f degF/hr\n",timeder1);

