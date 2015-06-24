// Example 7.5 : Analysis of given circuit
B=100; // beta value
I_E=0.2510^-3; // (A)
R_1=20000; // (ohm)
R_2=20000; // (ohm)
R_3=3000; // (ohm)
R_4=2300; // (ohm)
R_5=15700; // (ohm)
R_6=3000; // (ohm)
r_e1=25/0.25; // (ohm)
r_e2=r_e1; // (ohm)
r_pi1=(B+1)*r_e1;
r_pi2=(B+1)*r_e2;
R_id=r_pi1+r_pi2;
disp(R_id,"Input differential resistance (ohm)")
I_E=1*10^-3;
r_e4=25/1;
r_e5=r_e4;
r_pi4=(B+1)*r_e4;
r_pi5=(B+1)*r_e5;
R_i2=r_pi4+r_pi5;
disp(R_i2,"Input resistance of the second stage R_i2 (ohm)")
A_1=(R_i2*(R_1+R_2)/((R_i2+R_1+R_2)*(r_e1+r_e2)))
disp(A_1,"Voltage gain of the first stage (V/V)")
r_e7=25/1;
R_i3=(B+1)*(R_4+r_e7);
disp(R_i3,"Input resistance of the third stage R_i3 (ohm)")
A_2=(-R_3*R_i3)/((R_3+R_i3)*(r_e4+r_e5));
disp(A_2,"Voltage gain of the second stage (V/V)")
r_e8=25/5;
R_i4=(B+1)*(r_e8+R_6);
disp(R_i4,"Input resistance of the third stage R_i2 (ohm)")
A_3=(-R_5*R_i4)/((R_5+R_i4)*(r_e7+R_4));
disp(A_3,"Voltage gain of the third stage (V/V)")
A_4=R_6/(R_6+r_e8);
disp(A_4,"Voltage gain of the fourth stage (V/V)")
A=A_1*A_2*A_3*A_4 ; // A=v_o/v_id (V/V)
disp(A,"Overall output gain (V/V)")
disp(20*log10(A),"Overall output gain in dB")
R_o=R_6*(r_e8+R_5/(B+1))/(R_6+r_e8+R_5/(B+1))
disp(R_o,"Output resistance (ohm)")