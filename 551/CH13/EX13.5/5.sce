clc

T1=1990; //K
T2=850; //K
Q=32.5/60; //kJ/s
P=0.4; //kW

n_carnot=(T1-T2)/T1;
disp("most efficient engine is one that works on Carnot cycle")
disp(n_carnot)

n_th=P/Q;
disp("n_thermal =")
disp(n_th)

disp("which is not feasible as no engine can be more efficient than that working on Carnot")
disp("Hence claims of the inventor is not true.")