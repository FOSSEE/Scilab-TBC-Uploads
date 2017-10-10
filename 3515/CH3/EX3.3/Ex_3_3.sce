// Exa 3.3
format('v',6);
clc;
clear;
close;
// Given data 
V_CC= 10;// in V
V_CE= 3.2;// in V
RC= 6.8;// in kΩ
RC= RC*10^3;// in Ω
I_S= 1*10^-15;// in A
V_T= 25*10^-3;// in V
I_C1= (V_CC-V_CE)/RC;// in A
// Formula I_C= I_S*%e^(V_BE1/V_T)
V_BE1= V_T*log(I_C1/I_S);// in volt
disp(I_C1*10^3,"Collector current in mA is : ")
disp(V_BE1,"Value of V_BE in volts is : ")

// Part (b)
v_in= 5*10^-3;// in V
Av= -(V_CC-V_CE)/V_T;// in V/V
disp(Av,"Voltage gain in V/V is : ")
v_o= abs(Av )*v_in;// in V
disp(v_o,"Change in output voltage in volts is : ")

// Part (c) for V_CE= 0.3 V
V_CE= 0.3;// in V
I_C2= (V_CC-V_CE)/RC;// in A
// I_C1= I_S*%e^(V_BE1/V_T)      (i)
// I_C2= I_S*%e^(V_BE2/V_T)      (ii)
// divide the equation (ii) by (i)
delta_V_BE= V_T*log(I_C2/I_C1);// in volt    ( where delta_V_BE = V_BE2-V_BE1 )
disp(delta_V_BE*10^3 ,"The positive increament in V_BE in mV is : ")

// Part (d)
v_o= 0.99*V_CC;// in V
I_C3= (V_CC-v_o)/RC;// in A
delta_V_BE= V_T*log(I_C3/I_C1);// in V
disp(delta_V_BE*10^3 ,"The negative increament in V_BE in mV is : ")








