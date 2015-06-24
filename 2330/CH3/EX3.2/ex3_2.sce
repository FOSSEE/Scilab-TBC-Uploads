// Exa 3.2
format('v',5)
clc;
clear;
close;
// given data
Vin= 5;// in V
V_LED= 2;// in V
Rs= 470;// in Ω
Vs= Vin-V_LED;// in V
// When supply voltage is 5 V, the LED current
I= Vs/Rs;// in A
I= I*10^3;// in mA
disp(I,"When supply voltage is 5 V, the LED current in mA is : ")
Vin= 10;// in V
Vs= Vin-V_LED;// in V
// When supply voltage is 10 V, the LED current
I= Vs/Rs;// in A
I= I*10^3;// in mA
disp(I,"When supply voltage is 10 V, the LED current in mA is : ")
Vin= 15;// in V
Vs= Vin-V_LED;// in V
// When supply voltage is 15 V, the LED current
I= Vs/Rs;// in A
I= I*10^3;// in mA
disp(I,"When supply voltage is 15 V, the LED current in mA is : ")
Vin= 20;// in V
Vs= Vin-V_LED;// in V
// When supply voltage is 20 V, the LED current
I= Vs/Rs;// in A
I= I*10^3;// in mA
disp(I,"When supply voltage is 20 V, the LED current in mA is : ")


