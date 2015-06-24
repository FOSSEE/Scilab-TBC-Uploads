clc
clear
//DATA GIVEN
T=175;                   //torque due to brake load in Nm
N=500;                   //engine speed in R.P.M.

//Brake Power, BP = (2*pi)NT/(60*1000) kW
BP = (2*%pi)*N*T/(60*1000); 

printf('The Brake Power, B.P. is: %4.2f kW.\n',BP);
