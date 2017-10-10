//Chapter-17,Example 6,Page 371
clc();
close();

v= 10^6  //volume of water

m1 = 40  //mass of Ca+2

m2 = 24    //mass of Mg+2

m3 = 44    //mass of CO2

m4 = 122    //mass of HCO3-

amnt_1 = 20     //amount of Ca+2 in ppm

amnt_2 = 25     //amount of Mg+2 in ppm

amnt_3 = 30     //amount of CO2 in ppm 

amnt_4 = 150     //amount of HCO3- in ppm

lime_1 = (74/100)*[(amnt_2*100/m2)+(amnt_3*100/m3)+(amnt_4*100/m4)]*v

soda = (106/100)*[(amnt_1*100/m1)+(amnt_2*100/m2)-(amnt_4*100/m4)]*v

printf("the lime required is = %.3f mg",lime_1)

printf("\n the soda required is = %.3f mg",soda)
