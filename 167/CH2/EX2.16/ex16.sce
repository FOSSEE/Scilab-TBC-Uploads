// example 16
// performance of hydraulic turbine generator
clear
clc
h=50 //depth of lake in metres
m=5000 // mass flow rate of water in kg/s
g=9.81 //acc. due to gravity in m/s^2
disp('change in mechanical energy= ')
e=g*h/1000 //change in mech. energy in kJ/kg
E1=e*m //Rate at which mechanical energy is supplied to the turbine in kW
E2=1862 //electric power generated in kW
n1=E2/E1 //overall efficiency
n2=0.95 //efficiency of generator
n3=n1/n2 //efficiency of turbine
W=n3*E1 //shaft power output in kW
printf("\n Hence,overall efficiency of turbine generator is = %.2f. \n",n1);
printf("\n The mechanical efficiency of the turbine is = %.2f. \n",n3);
printf("\n The shaft power supplied by the turbine to the generator is =%.0f kW.\n",W)