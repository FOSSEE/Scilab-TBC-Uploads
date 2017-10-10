//Chapter-5,Example 17,Page 129
clc();
close();

K1=5*10^-3    //rate constant at 800 degrees

Ea=4.5*10^4   //activation energy

T1=800+273   //temperature in Kelvin

T2=875+273   //temperature in Kelvin

R=8.314   //gas constant

K2=K1*10^(Ea*(T2-T1)/(2.303*R*T1*T2))

printf('the value of K2 = %.4f l/mol.sec',K2)
