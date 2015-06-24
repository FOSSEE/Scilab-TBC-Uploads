////Ex 11.7
clc;
clear;
close;
format('v',6);
k=1;//for the givn connection
//(a)
Vin=5;//V
Vout=-k*log10(Vin/0.1);//V
disp(Vout,"For 5V input, Output Voltage(V)");
//(b)
Vin=2;//V
Vout=-k*log10(Vin/0.1);//V
disp(Vout,"For 2V input, Output Voltage(V)");
//(c)
Vin=0.1;//V
Vout=-k*log10(Vin/0.1);//V
disp(Vout,"For 0.1V input, Output Voltage(V)");
//(d)
Vin=50;//mV
Vout=-k*log10(Vin/1000/0.1);//V
disp(Vout,"For 50mV input, Output Voltage(V)");
//(a)
Vin=5;//mV
Vout=-k*log10(Vin/1000/0.1);//V
disp(Vout,"For 5mV input, Output Voltage(V)");
