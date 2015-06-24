clc
K_dash = 25*10^-6
disp("K_dash = "+string(K_dash)+"A/V^2") 
VT = 1
disp("VT = "+string(VT)+"V") 
Z_by_L = 2
disp("Z_by_L = "+string(Z_by_L)+"V") 
VDD = 5
disp("VOH = VDD = "+string(VDD)+"V") //initialising value of drain voltage
VOH = 5
RL = 100*10^3
disp("RL = "+string(RL)+"ohm") //initialising value of load resistance
k=K_dash*Z_by_L
disp("k = "+string(k))
VOL = VDD/(1+(k*RL*(VDD-VT)))
disp("The voltage in outout load is ,VOL = VDD/(1+(k*RL*(VDD-VT))) = "+string(VOL)+" V")//calculation
VIL = (1/(k*RL))+VT
disp("The low input value is ,VIL = (1/(k*RL))+VT = "+string(VIL)+" V")//calculation
//VIH_VT = VIH-VT 
//Using the relation between Vout and Vin, we have 
//(k/2)*((3/4)*(VIH_VT)^2)+((VIH_VT)/(2*RL))-(VDD/RL)
//solving using physically correct solution
VIH_VT = (-0.2+2.45)/1.5
VIH = VIH_VT + VT
disp("The high input value is ,VIH = VIH_VT + VT = "+string(VIH)+" V")//calculation
//Equting the Current in the load and the transistor yields 
//(k/2)*(VM-VT)^2 = ((VDD-VM)/RL)
//solving using physically correct solution
VM = 2.08 
NML = VIL-VOL
disp("The low noise margin of the device is ,NML = VIL-VOL = "+string(NML)+" V")//calculation
NMH = VOH-VIH
disp("The high noise margin of the device is ,NMH = VOH-VIH = "+string(NMH)+" V")//calculation

