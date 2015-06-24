// Example 5.11: S(β), IC at 100°C
clc, clear
IC=2e-3; //  at 25°C in amperes
// From Table 5.1
bta1=50; // at 25°C
bta2=80; // at 100°C
RB_RE=10; // RB/RE
S=IC*(1+RB_RE)/(bta1*(1+bta2+RB_RE));
del_bta=bta2-bta1;
del_IC=S*del_bta; // in amperes
IC=IC+del_IC; //  at 100°C in amperes
IC=IC*1e3; //  at 100°C in mili-amperes
disp(S,"S(β) =");
disp(IC,"IC at 100°C (mA) =");