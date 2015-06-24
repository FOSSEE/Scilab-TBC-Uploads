// Exa 2.18
format('v',7);clc;clear;close;
// Given data
Error = 2/100;
Voltmeterrange = 50;//voltmeter range in V
Ammeterrange = 125;//ammeter range in mA
A1 = 40;//voltmeter reading in V
A2 = 125;//ammeter reading in mA
del_a1 = Error*Voltmeterrange;// in V
del_a2 = Error*Ammeterrange;// in mA
e1 =  del_a1/A1;// error in voltage
e2 = del_a2/A2;// error in current
e_T= (e1+e2)*100;//limiting error of the power calculated  in %
disp("The limiting error of the power calculated is : ± "+string(e_T)+" %")


