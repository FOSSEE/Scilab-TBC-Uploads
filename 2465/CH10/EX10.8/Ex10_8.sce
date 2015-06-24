//Chapter-10,Example 8,Page 254
clc();
close();

R=8.316    //gas constant

F=96500    //Farade's constant

n=2

T=298      //temperature in Kelvin

E0_Zn=-0.765   

E0_Cu=0.337

//cell reaction...Zn + Cu+2 <----> Zn+2 + Cu
//  K = [Zn+2]*[Cu]/[Zn]*[Cu+2]...equilibrium constant

E0_cell =E0_Cu - E0_Zn

//at equilibrium two electrode potential s will be equal
//   E0_cell = (2.303*R*T/n*F)*log10([Zn+2]*[Cu]/[Zn]*[Cu+2])
//   E0_cell = (2.303*R*T/n*F)*log10(K)

K = 10^(E0_cell/(2.303*R*T/(n*F)))

printf('the equilibrium constant is K = ')

disp(K)
