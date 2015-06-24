clc;funcprot(0);//EXAMPLE 17.8
// Initialisation of Variables
T=175;.......................//Torque due to brake load in Nm
N=500;.........................//Engine speed in rpm
//calcuations
BP=(2*%pi*N*T)/(60*1000);.......................//Brake power developed by engine in kW
disp(BP,"Brake power developed by engine (in kW):")
