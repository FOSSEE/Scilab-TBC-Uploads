clc
//Example 4.5
//calculate the work done
//work done=change in pot. energy + change in kinetic energy considering steady flow and adiabatic conditions
v_in=3;//m/s
v_out=10;//m/s
dke=(v_in^2-v_out^2)/2;//m^2/s^2
g=9.81;//m/s^2
dh=15;//m change in height in inlet and outlet
dpe=g*dh;//m^2/s^2
W=dpe+dke//J/kg
printf("The work done is %f J/Kg",W);