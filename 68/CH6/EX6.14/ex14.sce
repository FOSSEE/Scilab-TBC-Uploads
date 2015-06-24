// Example 6.14 : To determine required resistor values
//  The circuits generate a constant current I_D=10uA which operate at a supply of 10V
V_BE=0.7; // (V)
V_t=0.025; // (V)
I_REF=10*10^-6; // (A)
V_DD=10; // (V)
I=1*10^-3; // (A)
V_BE1=V_BE+V_t*log(I_REF/I); // Voltage drop across Q_1
disp(V_BE1,"V_BE1 (V)")
R_1=(V_DD-V_BE1)/(I_REF); // For the Widlar circuit we decide I_REF=1mA and V_BE1=0.7V
disp(R_1,"R_1 (ohm)")
R_2=(V_DD-V_BE)/I;
disp(R_2,"R_2 (ohm)")
R_3=(V_t/I_REF)*log(I/I_REF);
disp(R_3,"R_3 (ohm)")