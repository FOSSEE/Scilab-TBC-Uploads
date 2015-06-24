// Example 3.5 : Repeating example 3.4 using piecewise linear model
V_D0=0.65; // (V)
r_D=20; // (ohm)
R=1000; // (ohm)
V_DD=5; // (V)
I_D=(V_DD-V_D0)/(R+r_D);
disp(I_D,"I_D (A)")
V_D=V_D0+I_D*r_D;
disp(V_D,"The diod voltage (V)")