clc
T1=293; //K
T6=898; //K
T8=T6;
n_c=0.8; //Efficiency of each compressor stage
n_t=0.85; //Efficiency of each turbine stage
n_mech=0.95;
e=0.8;
cpa=1.005; //kJ/kg K
cpg=1.15; //kJ/kg K
y1=1.4;
y2=1.333;

disp("(i) Thermal efficiency")
T3=T1;

// p2/p1=sqrt(9)=3
T2=T1*(3)^((y1-1)/y1);
T2a=(T2-T1)/n_c + T1;
T4a=T2a;
W_c=cpa*(T2a-T1); //Work input per compressor stage
W_t=2*W_c/n_mech; //Work output of H.P. turbine
T7a=T6-W_t/cpg;
T7=T6-(T6-T7a)/n_t;

// (p6/p7)=(T6/T7)^(y2/(y2-1))=4.82;
// p8/p9=9/4.82=1.86
T9=T8/(1.86)^((y2-1)/y2);
T9a=T8-n_t*(T8-T9);

W=cpg*(T8-T9a)*n_mech; //Net work output
T5=e*(T9a-T4a)+T4a;

Q=cpg*(T6-T5)+cpg*(T8-T7a); //Heat supplied
n_thermal=W/Q*100;
disp("n_thermal =")
disp(n_thermal)
disp("%")

disp("(ii) Work ratio")
Gross_work=W_t+W/n_mech;
W_ratio=W/Gross_work;
disp("Work ratio=")
disp(W_ratio)


disp("(iii) Mass flow rate =")
m=4500/W;
disp(m)
disp("kg/s")