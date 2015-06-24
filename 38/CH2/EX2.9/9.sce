// Caption: Finding current in feeder wires in per unit
clear;
close;
clc;
V_base=2400/sqrt(3);//for 2400V feeder and line to neutral
I_base=50000/1385;//phase Y
Z_base=V_base/I_base;//phase Y
X_feeder=0.8/Z_base;//per unit

SC_current=1.00/.0608;// short circuit current in per unit
disp(SC_current,'short circuit current in per unit=')