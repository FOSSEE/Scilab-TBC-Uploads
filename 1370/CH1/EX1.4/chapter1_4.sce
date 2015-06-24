//example1.4
clc
disp("The equivalent resistance of two is,")
r=(10*20)/30
format(5)
disp(r,"R_eq(in ohm)=(R1*R2)/(R1+R2)=")
i=50/6.67
format(4)
disp(i,"I_t(in amp)=V/R_eq=")
disp("As per the current distribution in parallel circuit,")
i=(7.5*20)/30
disp("I_1(in amp)=(I_t*R2)/(R1+R2)=")
i=75/30
disp(i,"and,  I_2(in amp)=(I_t*R1)/(R1+R2)=")
disp("It can be verified that I_t=(I1)+(I2).")
