clc;
Vin=[0.002 0.00188]; //Volt
Av=500; 
Vout1=Av*Vin(1,1); //Volt
Vout2=Av*Vin(1,2); //Volt
disp('V',Vout1,"Vout1=");//The answers vary due to round off error
disp('mV',Vout2*1000,"Vout2=");//The answers vary due to round off error


