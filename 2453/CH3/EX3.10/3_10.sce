//To calculate the energy values
n1 = 1;     //for ground state
n2 = 2;     //for 1st excited state
n3 = 3;     //for 2nd excited state
h = 6.626*10^-34;      //planck's constant, J sec
m = 9.1*10^-31;      //mass of electron, kg
L = 1*10^-10;     //width, m
E1 = h^2*n1^2/(8*m*L^2);      //energy in ground state, J
E2 = n2^2*E1;       //energy in 1st excited state, J
E3 = n3^2*E1;       //energy in 2nd excited state, J
printf("energy in ground state in J is");
disp(E1);
printf("energy in 1st excited state in J is");
disp(E2);
printf("energy in 2nd excited state in J is");
disp(E3);
