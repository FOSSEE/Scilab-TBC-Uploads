//Chapter 13_Voltage Regulators
//Caption : Maximum Efficiency and Power
//Example13.3: Calculate the maximum efficiency and associated power dissipation for the 5 V MC7805 series regulator.The input ripple is 10 V and the load current is 1 A. The output is between 4.75 to 5.25 for &v<=Vin<=20 V.
//Solution:
clear;
clc;
Vo=5;
Vin=17;//since for MC7805 a maximum of 7.5 V is added to the ripple.Since 10 V ropple is given so Vin=10+7=17 V
Il=1;//load current in ampere
n=Vo/Vin*100;//series pass reguator overall efficiency
Pd=(Vin-Vo)*Il;
disp('%',n,'maximum efficiency for 5V MC7805 series regulator is:')
disp('W',Pd,'power dissipation for the 5V MC7805 series regulator is:')