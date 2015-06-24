//Ex8_13
clc
Iio=0.1*10^(-9)
disp("Iio = "+string(Iio)+" ampere/degree _celsius") //Input offset current  
Vio=10*10^(-6)
disp("Vio= "+string(Vio)+" volt/degree _celsius") //Input offset voltage
Vs=10*10^(-3)
disp("Vs= "+string(Vs)+" volts") //Input voltage
R1=10*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
RF=100*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
disp("part(i)")
R2=(R1*RF)/(R1+RF)// R1 in parallel with RF
disp("R2=(R1*RF)/(R1+RF)= "+string(R2)+ " ohm")  // resistance to balance IB i.e offset effect 
disp("part(ii)")
delta_T=75-25
disp("delta_T=75-25 = "+string(delta_T)+" degree_celsius") //Temperature change
delta_Vo=[(Vio*delta_T)*(1+RF/R1)]+(Iio*delta_T*RF)
disp("delta_Vo=[(Vio*delta_T)*(1+RF/R1)]+(Iio*delta_T*RF)= "+string(delta_Vo)+" volts") //Output voltage drift
disp("part(iii)")
Vo=(-RF/R1)*Vs
disp("Vo=(-RF/R1)*Vs= "+string(Vo)+" volts") //Inverting OP-AMP output voltage
e=(delta_Vo/Vo)*100
disp("Percentage error=(delta_Vo/Vo)*100 =(-)"+string(abs(e))+", (+)"+string(abs(e))+"  percent")//percentage error
