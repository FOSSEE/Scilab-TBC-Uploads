//Ex8_10
clc
Av = -200
Ri = 10*10^3
RL = 3*10^3
Ai = Av*Ri/RL
disp("Av = "+string(Av))//voltage gain
disp("Ri = "+string(Ri)+"ohm")//input resistance
disp("RL = "+string(RL)+"ohm")//load resistance
disp("Ai = Av*Ri/RL = "+string(Ai))//current gain

// note : there are mis-printring in the textbook for the above problem regading formula and notations.
//        answer in the textbook for above problem is wrong.
