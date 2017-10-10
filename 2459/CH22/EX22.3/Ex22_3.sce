//chapter22
//example22.3
//page491

I_D=5 // mA
I_DSS=10 // mA
V_GS_off=-6 // V

// we know that I_D=I_DSS*(1-V_GS/V_GS_off)^2 so making V_GS as subject we get

V_GS=V_GS_off*(1-(I_D/I_DSS)^0.5)
V_P=-V_GS_off

printf("gate source voltage = %.3f V \n",V_GS)
printf("pinch off voltage = %.3f V \n",V_P)
