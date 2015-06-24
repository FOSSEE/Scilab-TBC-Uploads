//Chapter-10,Example 4,Page 253
clc();
close();

//Cell reaction is ...Zn+2  +2Ag <----> Zn + 2Ag+

E0_cell= 1.1    //standard potential for cell 

R=8.314    //gas constant

F=96500    //Farade's constant

n=2

T=298      //temperature in Kelvin

Zn= 0.001

Cu= 0.1

E_cell=E0_cell+(2.303*R*T/(n*F))*log10(Cu/Zn)

printf('the e.m.f. of Daniel cell is %.4f V',E_cell)
