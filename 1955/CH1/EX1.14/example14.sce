
clc
clear
//input data
N=3//Number of stages in turbine
P=2//Pressure ratio of each stage
ns=0.75//Stage efficiency of each stage
T1=873//Initial temperature of air in K
m=25//Flow rate of air in kg/s
r=1.4//ratio of specific heats for air
Cp=1.005//specific at heat at constant pressure in J/kg.K

//calculations
np=(r/(r-1))*((log(1-(ns*(1-(1/P)^((r-1)/r)))))/(log(1/P)))//Polytropic efficiency of the process
nt=((1-(1/P)^(N*np*((r-1)/r)))/(1-(1/P)^(N*((r-1)/r))))//Overall efficiency of the turbine
W=m*Cp*T1*(1-(1/P)^(N*np*((r-1)/r)))//Power developed by the turbine in kW
RF=nt/ns//Reheat factor of the process

//output
printf('(a)The overall efficiency of the turbine is %3.4f\n(b)The power developed by the turbine is %i kW\n(c)The reheat factor of the process is %3.2f',nt,W,RF)

//comments
// the answer which i have got in scilab is correct  it is showing error because the intermediate values have been approximated in textbook where as in the software it is not. if the answer is calculated in the calculator then it is same as that of obtained from the software.
