// Exa 2.14
format('v',6);clc;clear;close;
// Given data
V = 150;//voltage in V
R1 = 50;//resistance in k ohm
R2 = 100;//resistance in k ohm
V_AB = R1 * (V/(R1+R2));// in V
sensitivity = 1;// in k ohm/V
R = sensitivity*V_AB;// in  k ohm
V_AB1 = ((R1*R)/(R1+R))*( V/(R2+(R1*R)/(R1+R)) );//voltage reading on the voltmeter  in V
disp("Part (i) When voltmeter sensitivity is 1 kΩ/volt : ")
disp(V_AB1,"The voltage reading on the voltmeter in V is : ")
Per_Error= ((V_AB-V_AB1)/V_AB)*100;// %e in %
disp(Per_Error,"The percentage error in % is : ")
sensitivity = 25;// in  k ohm/V
R = sensitivity*V_AB;// in k ohm
Rnet = (R1*R)/(R1+R);// assumed for calculation
V_AB2 = Rnet*( V/(R2+Rnet) );// in V
disp("Part (ii) When voltmeter sensitivity is 25 kΩ/volt : ")
disp(V_AB2,"The voltage reading on the voltmeter in V is : ")
Per_Error = ((V_AB-V_AB2)/V_AB)*100;// %e in %
disp(Per_Error,"The percentage error in % is : ")
disp("Thus the voltmeter with low sensitivity shows more error");
disp(" while voltmeter with high sensitivity shows less error.")
