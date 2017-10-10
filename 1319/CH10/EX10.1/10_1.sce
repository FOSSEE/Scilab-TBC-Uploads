//Determine the additional load which can be supplied

clc;
clear;

printf('a) D.C two wire: \nPower transmitted by DC two wire = P and Voltage between the wires = V\n')
printf('Copper Loss = 2 *(P/V)^2)*R ; where R is the resistance of each wire\n')
printf('Per Unit Loss = 2*P*R/(V^2)\n\n')
printf('b) 3 phase 3 wire: \nPower transmitted = P''\n ')
printf('I'' = P''/(sqrt(3)*V) for unity p.f\n')
printf('Copper Loss = 3*((P''/(sqrt(3)*V))^2)*R = ((P/V)^2)*R\n')
printf('Per Unit Loss = P''*R/(V^2)\n\n')
printf('Equating the per unit loss we have\n')
printf('2*P*R/(V^2) = P''*R/(V^2) or P'' = 2P\n Which proves that 100 %% aditional pwer can be supplied by 3 phase 3 wire system\n')
