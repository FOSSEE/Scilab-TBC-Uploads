clc
p1=101.325; //kPa
T1=300; //K
rp=6;
y=1.4;

T2=T1*rp^((y-1)/y);

//T3/T4=rp^((y-1)/y)
//T4=T3/1.668

//W_T=2.5*W_C

T3=2.5*(T2-T1)/(1-1/1.668);
disp("(i) Maximum temperature in the cycle =")
disp(T3)
disp("K")


disp("(ii) Cycle efficiency")
T4=T3/1.668;

n_cycle=((T3-T4) - (T2-T1))/(T3-T2);
disp(" Cycle efficiency =")
disp(n_cycle)