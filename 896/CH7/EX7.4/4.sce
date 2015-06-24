clc
//Example 7.4
//calculate the force required to hold of water from a hoze
rho=998.2//Kg/m^3
q=0.01//m^3/s
v_initial=30//m/s
v_final=-15//m/s
F=q*rho*(v_final-v_initial)//N
printf("The force required to hold of water from a hoze %f N",F);