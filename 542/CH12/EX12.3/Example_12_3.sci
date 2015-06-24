clear;
clc;
printf("\n Example 12.3");
//as the system are dilute mole fractions are approximately equal to mole ratios.
//At the bottom of the tower
y1 =0.015;            //mole fraction
G = 1;                //Gas flow rate is in kg/m^2sec
//At the top of the tower
y2 = 0.00015;         //mole fraction
x2 = 0;
L = 1.6;             //liquid flow rate is in kg/m^2.sec
Lm = 1.6/18;         //liquid flow rate is in kmol/m^2.sec
Gm = 1.0/29;         //gas flow rate is in kmol/m^2.sec
x1 = poly([0],'x1');
x11 = roots(Gm*(y1-y2)-Lm*(x1));
printf("\n    x1 = %f",x11);
function[ye1]=henry_law(x)
    ye1 = 1.75*x;
    funcprot(0);
endfunction
bottom_driving_force = y1 - henry_law(x11);
 function[lm]=log_mean()
     lm = (bottom_driving_force-y2)/log(bottom_driving_force/y2);
     funcprot(0);
 endfunction
NoG = (y1-y2)/log_mean();
NoL = NoG*1.75*(Gm/Lm);
printf("\n     NoL =%.2f",NoL);
