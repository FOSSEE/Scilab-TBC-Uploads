
clc
clear
//Input data
Ns=210//Specific speed 
P=30//Power in MW
N=180//Speed in rpm
Q=0.6//Discharge in m^3/s
h=4.5//Head in m
e=88//Efficiency in percent
d=1000//Density in kg/m^3

//Calculations
Pm=(d*Q*9.81*h*(e/100)*10^-3)//Power in kW
Nm=(Ns*h^(5/4))/sqrt(Pm)//Speed in rpm
Hp=((N*sqrt(P*1000))/Ns)^(4/5)//Head in m
Dpm=(Nm/N)*sqrt(Hp/h)//Scale ratio
Qp=(P*10^6)/(d*9.81*Hp*(e/100))//Discharge in m^3/s

//Output
printf('Speed is %3.0f rpm \n Power is %3.3f kW \n Scale ratio is %3.3f \n Flow through the turbine is %3.1f m^3/s',Nm,Pm,Dpm,Qp)
