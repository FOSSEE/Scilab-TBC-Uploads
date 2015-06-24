clc
Q1=300; //kJ/s
T1=290; //0C
T2=8.5; //0C
disp("let ΣdQ/T = A")

disp("(i) 215 kJ/s are rejected")
Q2=215; //kJ/s
A= Q1/(T1+273) - Q2/(T2+273)
disp("Since, A<0, Cycle is irreversible.")


disp("(ii) 150 kJ/s are rejected")
Q2=150; //kJ/s
A= Q1/(T1+273) - Q2/(T2+273)
disp("Since A=0, cycle is reversible")


disp("(iii) 75 kJ/s are rejected.")
Q2=75; //kJ/s
A= Q1/(T1+273) - Q2/(T2+273)
disp("Since A>0, cycle is impossible")