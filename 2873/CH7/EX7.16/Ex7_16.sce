// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 16")
To=(17+273);//temperature of surrounding in K
T1=(700+273);//temperature of high temperature reservoir in K
T2=(30+273);//temperature of low temperature reservoir in K
Q1=2*10^4;//rate of heat receive in KJ/min
W_useful=0.13*10^3;//output of engine in KW
disp("availability or reversible work,W_rev=n_rev*Q1 in KJ/min")
n_rev=(1-T2/T1);
W_rev=n_rev*Q1
W_rev=W_rev/60;//W_rev in KJ/s
disp("rate of irreversibility,I=W_rev-W_useful in KJ/sec")
I=W_rev-W_useful
disp("second law efficiency=W_useful/W_rev")
W_useful/W_rev
disp("in percentage")
W_useful*100/W_rev
disp("so availability=1.38*10^4 KJ/min")
disp("and rate of irreversibility=100 KW,second law efficiency=56.63 %")
disp("NOTE=>In this question,wrong values are put in expression for W_rev in book,however answer is calculated correctly.")
