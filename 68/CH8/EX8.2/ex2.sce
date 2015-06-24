// Example 8.2: Feedback triple
// Consider the given three stage series-series feedback
h_fe=100;
g_m2=40*10^-3; // (A/V)
r_e1=41.7; // (ohm)
a_1=0.99; // alpha value
R_C1=9000; // (ohm)
R_E1=100; //(ohm)
R_F=640; // (ohm)
R_E2=100; //(ohm)
r_pi2=h_fe/g_m2;
R_C2=5000; // (ohm)
r_e3=6.25; // (ohm)
R_C3=800; //(ohm)
// First stage gain A_1=V_c1/V_i
A_1=-a_1*R_C1*r_pi2/((R_C1+r_pi2)*(r_e1+((R_E1*(R_F+R_E2))/(R_E1+R_F+R_E2)))) 
disp(A_1,"The voltage gain of the first stage (V/V)")
// Gain of the second stage A_2=Vc2/V_c1
A_2=-g_m2*{(R_C2*(h_fe+1)/(R_C2+h_fe+1))*[r_e3+(R_E2*(R_F+R_E1))/(R_E2+R_F+R_E1)]}
disp(A_2,"The second stage gain (V/V)")
// Third stage gain A_3 I_O/V_i
A_3=1/(r_e3+(R_E2*(R_F+R_E1)/(R_E2+R_F+R_E1)));
disp(A_3,"The third stage gain (V/V)")
A=A_1*A_2*A_3; // combined gain
disp(A,"Combined gain (V/V)")
B=R_E1*R_E2/(R_E2+R_F+R_E1);
disp(B,"Beta value")
A_f=A/(1+A*B);
disp(A_f,"Closed loop gain (A/V)")
A_v=-A_f*R_C3; // Voltage gain
disp(A_v,"Voltage gain (V/V)")
R_i=(h_fe+1)*(r_e1+(R_E1*(R_F+R_E2))/(R_E1+R_F+R_E2));
R_if=R_i*(1+A*B);
disp(R_if,"Input resistance (ohm)")
R_o=(R_E2*(R_F+R_E1)/(R_F+R_E1+R_E2))+r_e3+R_C2/(h_fe+1);
R_of=R_o*(1+A*B);
disp(R_of,"Output voltage (ohm)")
r_o=25000; // (ohm)
g_m3=160*10^-3; // (mho)
r_pi3=625; // (ohm)
R_out=r_o+(1+g_m3*r_o)*R_of*r_pi3/(R_of+r_pi3);
disp(R_out,"R_out (ohm)")