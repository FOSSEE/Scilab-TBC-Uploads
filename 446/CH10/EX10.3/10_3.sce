clear
clc
disp('Exa-10.3(a)');
kT=0.0252;E=10.2                              // at room temperature, kT=0.0252 standard value and given value of E
n2=2;n1=1; g2=2*(n2^2);g1=2*(n1^2);           //values for ground and excited states
t=(g2/g1)*%e^(-E/kT);                         //fraction of atoms
printf('The number of hydrogen atoms required is %e which weighs %e Kg\n',1/t,(1/t)*(1.67*10^-27));
disp('Ex-10.3(b)');
t=0.1/0.9;k=8.65*10^-5                          //fracion of atoms in case-2 is given
T=-E/(log(t/(g2/g1))*k);                        //temperature
printf('The value of temperature at which 1/10 atoms are in excited state is %.3f K',T);
