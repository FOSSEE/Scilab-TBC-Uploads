clear
clc
disp('Exa-12.7');
m236Ra=226.025403;
m222Rn=222.017571;
m4He=4.002603;c2=931.5; //mass of various elements and c2=c^2
Q=(m236Ra-m222Rn-m4He)*c2;//Q of the reaction
A=226              
K=((A-4)/A)*Q;                           //kinetic energy
printf('The kinetic energy of the alpha particle is %.3f Mev',K);
