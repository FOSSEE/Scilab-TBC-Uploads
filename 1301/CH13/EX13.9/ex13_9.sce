clc;
pi=12*746;    //input power in Watt sice 1hp=746 Watt
i=30;         //current in Ampere
v=240;        //potential difference in volt
po=v*i;       //calculating output power using p=v*i
e=po/pi;      //calculating efficiency using eff=oupt/input
disp(e*100,"Efficiency of the generator = ");     //displaying result