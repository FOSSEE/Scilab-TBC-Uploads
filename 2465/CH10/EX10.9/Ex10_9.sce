//Chapter-10,Example 9,Page 255
clc();
close();

E0_Ag = 0.799    //standard potential for copper

Ksp=8.3*10^-17

I=1

Ag= Ksp/I

n= 2

R=8.314    //gas constant

F=96500    //Farade's constant

n=2

T=298      //temperature in Kelvin

E_Ag=E0_Ag+(2.303*R*T/(n*F))*log10(Ag)

printf('the single electrode potential of Ag is %.5f V ',E_Ag)
