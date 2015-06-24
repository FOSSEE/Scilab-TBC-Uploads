//Chapter-17,Example 1,Page 369
clc();
close();

m1 = 146    //mass of Mg(HCO3)2

m2 = 162    //mass of Ca(HCO3)2

m3 = 95    //mass of MgCl2

m4 = 136    //mass of CaSO4

amnt_1 = 7.5     //amount of Mg(HCO3)2 in mg/l

amnt_2 = 16     //amount of Ca(HCO3)2 in mg/l

amnt_3 = 9     //amount of MgCl2 in mg/l

amnt_4 = 13.6     //amount of CaSO4 in mg/l

temp_hard= (amnt_1*100/m1)+(amnt_2*100/m2)

perm_hard= (amnt_3*100/m3)+(amnt_4*100/m4)

total= temp_hard +perm_hard

printf("the temporary hardness is = %.2f mg/l",temp_hard)

printf("\n the total  hardness is = %.2f mg/l",total)
