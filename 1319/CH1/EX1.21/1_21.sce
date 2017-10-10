// To determine Rl for which resonance can take place

clc;
clear;

Rl=poly(0,'Rl');
Rc=5;
Xc=6;
Xl=15;

x=(((Rl^2)+(Xl^2))*Xc)-(((Rc^2)+(Xc^2))*Xl);

Rl=roots(x);

disp(x)

printf('The above eqaution must be eqauted to zero to get Rl \n')

disp(Rl)

printf('The above eqaution leads to imaginary roots which is not possible, hence no value of Rl can bring resonance in the circuit at the given condition \n' )
