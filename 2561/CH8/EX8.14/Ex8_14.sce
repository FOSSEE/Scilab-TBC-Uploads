//Ex8_14
clc
Iio=0.1*10^(-9)
disp("Iio = "+string(Iio)+" ampere") //Input offset current
VCC=15
disp("VCC= "+string(VCC)+" volts") //  voltage supply  
PSRR=150*10^(-6)
disp("PSRR= "+string(PSRR)+"  volts/V")// Power supply rejection ratio
Vio=10*10^(-6)
disp("Vio= "+string(Vio)+" volts") //Input offset voltage
R1=10*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
RF=100*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
delta_T=75-25
disp("delta_T=75-25 = "+string(delta_T)+" celsius") //Temperature change
delta_Vo=[(Vio*delta_T)*(1+RF/R1)]+(Iio*delta_T*RF)
disp("delta_Vo=[(Vio*delta_T)*(1+RF/R1)]+(Iio*delta_T*RF)= "+string(delta_Vo)+" volts") //Output voltage drift
delta_Vio1=(delta_Vo)*(R1/RF)
disp("delta_Vio1=(delta_Vo)*(R1/RF)= "+string(delta_Vio1)+" volts") // voltage change at Input for voltage drift found
delta_Vio2=(delta_Vio1)*(1/10)
disp("delta_Vio2=(delta_Vio1)*(1/10)= "+string(delta_Vio2)+" volts") //  change in Vio due to PSRR
p=[(delta_Vio2)/(VCC*PSRR)]*100
disp("power supply regulation=[(delta_Vio2)/(VCC*PSRR)]*100 ="+string(p)+ " percent")// power supply regulation requirement

//delta_Vio1 corresponds to voltage change at Input for voltage drift found 
//delta_Vio2 corresponds voltage change at input due to PSRR

