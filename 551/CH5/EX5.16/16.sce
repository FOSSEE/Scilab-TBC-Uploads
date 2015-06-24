clc
T1=600; //K
T2=300; //K


disp("(i) When Q1=Q2")
T3=2*T1/(T1/T2+1);
disp("T3=")
disp(T3)
disp("K")


disp("(ii) Efficiency of Carnot engine and COP of carnot refrigerator")
n=(T1-T3)/T1; //carnot engine
COP=T2/(T3-T2); //refrigerator

disp("Efficiency of carnot engine = ")
disp(n)

disp("COP of carnot refrigerator = ")
disp(COP)