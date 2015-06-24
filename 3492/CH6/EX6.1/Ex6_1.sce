clc
//Chapter6
//Ex_1
//Given
//let K=kT/e
K=0.0259 //in V
Nd=10^17 //in cm^-3
Na=10^16 //in cm^-3
ni_Si=1.45*10^10 //in cm^-3
ni_Ge=2.40*10^13 //in cm^-3
ni_GaAs=1.79*10^6 //in cm^-3
//Vo=(k*T/e)*log(Nd*Na/ni^2)
Vo_Si=(K)*log(Nd*Na/ni_Si^2)
disp(Vo_Si,"Built in potential for Si in Volts is")
Vo_Ge=(K)*log(Nd*Na/ni_Ge^2)
disp(Vo_Ge,"Built in potential for Ge in Volts is")
Vo_GaAs=(K)*log(Nd*Na/ni_GaAs^2)
disp(Vo_GaAs,"Built in potential for GaAs in Volts is")
