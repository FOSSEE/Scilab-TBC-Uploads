// Caption: Finding internal starting torque
clear;
close;
clc;
P_r=380-3*5.7^2*0.262;
//from test 1
Z_nl=219/(sqrt(3)*5.7);//phase Y
R_nl=380/(3*5.7^2);

//from test 2
Z_bl=26.5/(sqrt(3)*18.57);//phase at 15 hz
R_bl=675/(3*18.75^2)//

//internal starting torque
P_g=20100-3*83.3^2*0.262;//air gap power

T_start=P_g/188.5;//starting torque in N-m
