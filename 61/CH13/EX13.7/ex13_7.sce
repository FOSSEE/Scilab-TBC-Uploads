//ex13.4
V_IN1=3;
V_IN2=2;
V_IN3=8;
R_f=10*10^3;
R1=47*10^3;
R2=100*10^3;
R3=10*10^3;
weight_of_input1=R_f/R1;
weight_of_input2=R_f/R2;
weight_of_input3=R_f/R3;
V_OUT=-(weight_of_input1*V_IN1+weight_of_input2*V_IN2+weight_of_input3*V_IN3);
disp(weight_of_input1,'weight_of_input1')
disp(weight_of_input2,'weight_of_input2')
disp(weight_of_input3,'weight_of_input3')
disp(V_OUT,'output voltage in volts')