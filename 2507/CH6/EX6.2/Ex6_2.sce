clc
clear
printf("Example 6.2 | Page number 153 \n\n");
//Part(a)Find the rate of heat transfer in the evaporator and the power input to the compressor.
//Part(b)Calculate COP if refrigerator were to operate as heat pump

//Given Data
COP_ref = 4 //COP of refrigerator
Q1 = 0.5 //kJ/s //rate of heat transfer at the condensor

//Solution
//Part(a)
printf("Part(a)\n");
Wc = Q1/(COP_ref+1) //kJ/s //Power input to compressor
Q2 = COP_ref*Wc //kJ/s //Rate of heat transfer in evaporator
printf("Rate of heat transfer in evaporator  = %.1f kJ/s\n",Q2)
printf("Power input to compressor = %.1f kJ/s\n\n",Wc)

//Part(b)
printf("Part(b)\n");
COP_hp = 1 + COP_ref //COP of heat pump
printf("COP of heat pump = %.1f",COP_hp)
