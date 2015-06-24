////Ex 11.8
clc;
clear;
close;
format('v',6);
k=1;//for the givn connection
//For 755N module
Rin=10;//kohm
Iref=10;//micro A
Vref=Rin*Iref/1000;//V
//(a)
Vin=5;//V
Vout1=-k*log10(Vin/0.1);//V
Vout=Vref*10^(-Vout1/k);//V
disp(Vout,"For 5V input to log amp, Antilog amp Output(V)");
//(b)
Vin=2;//V
Vout1=-k*log10(Vin/0.1);//V
Vout=Vref*10^(-Vout1/k);//V
disp(Vout,"For 2V input to log amp, Antilog amp Output(V)");
//(c)
Vin=0.1;//V
Vout1=-k*log10(Vin/0.1);//V
Vout=Vref*10^(-Vout1/k);//V
disp(Vout,"For 0.1V input to log amp, Antilog amp Output(V)");
//(d)
Vin=50;//mV
Vout1=-k*log10(Vin/1000/0.1);//V
Vout=Vref*10^(-Vout1/k);//V
disp(Vout*1000,"For 50mV input to log amp, Antilog amp Output(mV)");
//(e)
Vin=5;//mV
Vout1=-k*log10(Vin/1000/0.1);//V
Vout=Vref*10^(-Vout1/k);//V
disp(Vout*1000,"For 5mV input to log amp, Antilog amp Output(mV)");
