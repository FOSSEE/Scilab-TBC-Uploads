//Ex6_5 
// For  class-AB BJT amplifier
clc
VCC=(10)
disp("VCC= "+string(VCC)+" volts") // Collector voltage supply
VEE=VCC
disp("VEE=VCC= "+string(VEE)+" volts") // Emitter supply voltage
ICQ_0=10*10^(-3)
disp("ICQ_0 = "+string(ICQ_0)+" ampere") //  Zero signal collector current
RL=5
disp("RL= "+string(RL)+ " ohm")  //Load resistance
disp("part(i)")
Po=0// Since Output power at Zero signal condition is Zero
disp("Po="+string(Po)+" W") // Output power at Zero signal condition
PDC=2*VCC*ICQ_0
disp("PDC=2*VCC*ICQ_0= "+string(PDC)+" W") // Total D.C power supply for Zero signal condition
disp("part(ii)")
Vcm=VCC//For Full output voltage swing Vcm=VCC
disp("Vcm=VCC =" +string(Vcm)+" volts") // common mode voltage for full swing condition
Icm=VCC/RL
disp("Icm = VCC/RL="+string(Icm)+" ampere") // common mode current
Po=(1/2)*(Icm*Vcm)
disp("Po=(1/2)*(Icm*Vcm)="+string(Po)+" W") // Output power at full swing condition
ICavg=(Icm)/(%pi)
disp("ICavg=(Icm)/(%pi)="+string(ICavg)+" ampere") //  Average value of common mode current
PDC=2*(ICavg*VCC)
disp("PDC=2*VCC*ICavg= "+string(PDC)+" W") // Total D.C power supply for full swing condition
Etta=(Po/PDC)*100
disp("Efficiency,Etta=(Po/PDC)*100= "+string(Etta)+" %") // power amplifier conversion efficiency
disp("part(iii)")
Vcm1=(5)//given value
disp("Vcm1= "+string(Vcm1)+" volts") // common mode voltage for output swing Vcm=5 V
ICavg1=(Vcm1)/(%pi*RL)
disp("ICavg1=(Vcm1)/(%pi*RL)="+string(ICavg1)+" ampere") //  Average value of common mode current
Po1=(Vcm1^2)/(2*RL)
disp("Po1=(Vcm1^2)/(2*RL)="+string(Po1)+" W") // Output power for output swing Vcm=5 V
PDC1=2*(ICavg1*VCC)
disp("PDC1=2*VCC*ICavg1= "+string(PDC1)+" W") // Total D.C power supply for  output swing Vcm=5 V
Etta=(Po1/PDC1)*100
disp("Efficiency,Etta=(Po1/PDC1)*100= "+string(Etta)+" %") // power amplifier conversion efficiency for output swing Vcm=5 V
// NOTE:Correct value of Efficiency,Etta=(Po1/PDC1)*100= 39.269908 % for part(iii) but book ans is 39.31%(because of approximation used during calculation)
