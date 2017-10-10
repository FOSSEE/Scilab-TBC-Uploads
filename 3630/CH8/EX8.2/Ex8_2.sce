clc;
Vin=0.00024; //volt
Av=625; //Voltagegain
Vout=Av*Vin; //volt
disp('mV',Vout*1000,"Vout=");//The answers vary due to round off error
