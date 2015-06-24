clc
clear
printf("Example 7.5 | Page number 192 \n\n");
//Part(a) Find the COP of reversible heat engine as refrigerator.
//Part(b) Find the COP of reversible heat engine as heat pump.

//Given Data
T1 = 273 + 37 //K 
T2 = 273 - 13 //K

//Part(a)
printf("Part (a)\n");
COP_ref = T2/(T1-T2) //COP of reversible heat engine as refrigerator.
printf("COP of reversible heat engine as refrigerator = %.1f\n\n",COP_ref)
//Part(b)
printf("Part (b)\n");
COP_hp = T1/(T1-T2) //COP of reversible heat engine as heat pump.
printf("COP of reversible heat engine as heat pump = %.1f",COP_hp)
