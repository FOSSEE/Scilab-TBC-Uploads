//example1.3
clc
disp("I=v/(R1+R2+R3)  ..... series circuit")
i=60/60
disp(i,"I(in amp)=")
v=1*10
disp(v,"Therefore,  V_r1(in V)=(I*R1)=(V*R1)/(R1+R2+R3)=")
v=1*20
disp(v,"Therefore,  V_r2(in V)=(I*R2)=(V*R2)/(R1+R2+R3)=")
v=1*30
disp(v,"and,  V_r3(in V)=(I*R3)=(V*R3)/(R1+R2+R3)=")
disp("Key point: It can be seen that voltage across any resistance of series circuit is ratio of that resistance to the total resistance, multiplied by the source voltage.")
