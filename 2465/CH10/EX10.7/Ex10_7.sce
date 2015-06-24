//Chapter-10,Example 7,Page 254
clc();
close();

R=8.314    //gas constant

F=96500    //Farade's constant

n=2

T=298      //temperature in Kelvin

C1= 0.01

C2= 0.1

E_cell=(2.303*R*T/(n*F))*log10(C2/C1)

printf('the e.m.f. of cell is %.4f V',E_cell)
