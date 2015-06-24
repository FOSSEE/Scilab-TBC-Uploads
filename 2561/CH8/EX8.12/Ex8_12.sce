//Ex8_12
clc
IB=0.5*10^(-6)
disp("IB = "+string(IB)+" ampere") //Input bias current 
Iio=0.05*10^(-6)
disp("Iio = "+string(Iio)+" ampere") //Input offset current  
Vio=1*10^(-3)
disp("Vio= "+string(Vio)+" volts") //Input offset voltage
R1=10*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
RF=500*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
Vos1=Vio*(1+RF/R1)
disp("Vos1=Vio*(1+RF/R1)="+string(Vos1)+" volts") //output offset voltage due to input offset voltage
Vos2=IB*RF
disp("Vos2=IB*RF="+string(Vos2)+" volts") //output offset voltage due to Input bias current 
Vos=Vos1+Vos2
disp("Vos=Vos1+Vos2="+string(Vos)+" volts") //total output offset voltage 
R2=(R1*RF)/(R1+RF)
disp("R2=(R1*RF)/(R1+RF)= "+string(R2)+ " ohm")  // resistance to balance IB effect 
Vos2=Iio*RF
disp("Vos2=Iio*RF="+string(Vos2)+" volts") // Reduced output offset voltage due to Input offset current  
Vos=Vos1+Vos2
disp("Vos=Vos1+Vos2="+string(Vos)+" volts") // output offset voltage with compensation 
  
