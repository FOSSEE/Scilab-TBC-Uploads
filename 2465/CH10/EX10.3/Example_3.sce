//Chapter-10,Example 3,Page 252
clc();
close();

//Cell reaction is ...Zn+2  +2Ag <----> Zn + 2Ag+

E0_Zn=-0.762     //standard electrode potential for Zn

E0_Ag=0.798     //standard electrode potential for Ag

R=8.314    //gas constant

F=96500    //Farade's constant

n=2

T=298      //temperature in Kelvin

Zn= 0.2

Ag= 0.1

E_cell= (E0_Zn + (R*T/(n*F))*log(Zn))-(E0_Ag + (R*T/(n*F))*log(Ag^2))

printf('the cell voltage at 25 degree is %.3f V',E_cell)
