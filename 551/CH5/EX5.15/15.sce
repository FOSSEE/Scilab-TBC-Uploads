clc
T1=550; //K
T3=350; //K
// W=Q2*((T1-T2)/T2)
// W=Q2((T2-T3)/T2)
// From this we get following expression
T2=(T1+T3)/2;
disp("Intermediate temperature =")
disp(T2)
disp("K")