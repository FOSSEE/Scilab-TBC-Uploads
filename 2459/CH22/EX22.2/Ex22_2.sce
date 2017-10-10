//chapter22
//example22.2
//page491

I_DSS=32 // mA
V_GS=-4.5 // V
V_GS_off=-8 // V

I_D=I_DSS*(1-V_GS/V_GS_off)^2

printf("drain current = %.3f mA \n",I_D)
