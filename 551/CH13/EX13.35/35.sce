clc
y=1.4;
cp=1.005; //kJ/kg K
p1=1; //bar
T1=293; //K
p2=3.5; //bar
T3=873; //K
rp=p2/p1;

disp("(i) Efficiency of the cycle =")
n_cycle=1-1/rp^((y-1)/y);
disp(n_cycle)


disp("(ii) Heat supplied to air =")
T2=T1*(p2/p1)^((y-1)/y);
Q1=cp*(T3-T2);
disp(Q1)
disp("kJ/kg")

disp("(iii) Work available at the shaft =")
W=n_cycle*Q1;
disp(W)
disp("kJ/kg")

disp("(iv) Heat rejected in the cooler =")
Q2=Q1-W;
disp(Q2)
disp("kJ/kg")

disp("(v) Temperature of air leaving the turbine =")
T4=T3/rp^((y-1)/y);
disp(T4)
disp("K")