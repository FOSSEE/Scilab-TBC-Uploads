//Chapter-17,Example 9,Page 372
clc();
close();

m1 = 146    //mass of Mg(HCO3)2

m2 = 162    //mass of Ca(HCO3)2

m3 = 111    //mass of CaCl2

m4 = 120    //mass of MgSO4

m5 = 136    //mass of CaSO4

amnt_1 = 12.5     //amount of Mg(HCO3)2 in ppm

amnt_2 = 10.5     //amount of Ca(HCO3)2 in ppm

amnt_3 = 8.2     //amount of CaCl2 in ppm 

amnt_4 = 2.6     //amount of MgSO4 in ppm

amnt_5 = 7.5     //amount of CaSO4 in ppm

temp_hard= [(amnt_1*100/m1)+(amnt_2*100/m2)]*0.1

perm_hard= [(amnt_3*100/m3)+(amnt_4*100/m4)+(amnt_5*100/m5)]*0.1

printf("the temporary hardness is = %.4f degree Fr",temp_hard)

printf("\n the permanent hardness is = %.4f degree Fr",perm_hard)
