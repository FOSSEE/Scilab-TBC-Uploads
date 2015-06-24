//Chapter-17,Example 5,Page 370
clc();
close();

v= 50000  //volume of water

m1 = 84    //mass of MgCO3

m2 = 100    //mass of CaCO3

m3 = 95    //mass of MgCl2

m4 = 111    //mass of CaCl2

amnt_1 = 144     //amount of MgCO3 in ppm

amnt_2 = 25     //amount of CaCO3 in ppm

amnt_3 = 95     //amount of MgCl2 in ppm 

amnt_4 = 111     //amount of CaCl2 in ppm

lime = (74/100)*[2*(amnt_1*100/m1)+(amnt_2*100/m2)+(amnt_3*100/m3)]*v

printf("the lime required is = %.3f mg",lime)
