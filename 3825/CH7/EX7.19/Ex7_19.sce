clc
T=298 //temperature in kelvin
T1=523 //temperature in kelvin
T2=773 //temperature in kelvin
mprintf("Fraction of available energy lost=%f",(T*((1/T1)-(1/T2)))/(1-(T/T2)))//ans vary due to roundoff error
