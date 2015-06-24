//Chapter-10,Example 2,Page 252
clc();
close();

E0 = 0.34    //standard potential for copper

n= 2

Cu = 0.15

R=8.314    //gas constant

F=96500    //Farade's constant

n=2

T=298      //temperature in Kelvin

E=E0+(2.303*R*T/(n*F))*log10(Cu)

printf('the single electrode potential of copper is %.5f V ',E)
