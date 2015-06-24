clear
clc
disp('Exa-12.8');
m226Ra=226.025403; //mass of various elements
m212Pb=211.991871;
m14c=14.003242;
c2=931.5;       //value of c^2
Q=(m226Ra-m212Pb-m14c)*c2;      //Q of the reaction
printf('The value of Q for 14c emission is %.3f MeV\n',Q);
printf('The probability of 14c emission is 10^-9 times that of an alpha particle since the energy barrier for 14c emission is\n nearly 3 times higher and thicker.')