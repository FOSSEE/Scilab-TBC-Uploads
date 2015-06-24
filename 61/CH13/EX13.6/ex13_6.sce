//ex13.6
R_f=25*10^3;
R1=100*10^3;
R2=R1;
R3=R1;
R4=R1;
R=R1;
V_IN1=1;
V_IN2=2;
V_IN3=3;
V_IN4=4;
V_OUT=-(R_f/R)*(V_IN1+V_IN2+V_IN3+V_IN4);
disp(V_OUT,'output voltage in volts')
V_IN_avg=(V_IN1+V_IN2+V_IN3+V_IN4)/4;
if abs(V_OUT)==V_IN_avg then
    disp('the amplifier produces an output whose magnitude is the mathematical average of the input voltages')
end