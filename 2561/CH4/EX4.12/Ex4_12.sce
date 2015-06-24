//Ex4_12 Refer fig 4.9(a)and fig 4.9(b)
clc
VDD=(5)
disp("VDD= "+string(VDD)+" volts") // Drain voltage supply
RL1=125*10^(3)
disp("RL1= "+string(RL1)+ " ohm")  //Load resistance
RL2=200*10^(3)
disp("RL2= "+string(RL2)+ " ohm")  //Load resistance
IDON1=34.88*10^(-6)
disp("IDON1 ="+string(IDON1)+" A")//Drain current for load line 1 from fig.
IDON2=22.5*10^(-6)
disp("IDON2 ="+string(IDON2)+" A")//Drain current for load line 2 from fig.
VDON1=VDD-IDON1*RL1
disp("VDON1=VDD-IDON1*RL1= "+string(VDON1)+" volts") //  output voltage  at drain terminal for IDON1
VDON2=VDD-IDON2*RL2
disp("VDON2=VDD-IDON2*RL2= "+string(VDON2)+" volts") //  output voltage  at drain terminal for IDON2
