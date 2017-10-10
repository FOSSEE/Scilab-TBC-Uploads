clc;
Zin=1500; //ohm
Rs=100; //Ohm
Vs=0.002; //Volt
Vin=Vs*(Zin/(Zin+Rs)); //Volt
disp('mV',Vin*1000,"Vin=");//The answers vary due to round off error
