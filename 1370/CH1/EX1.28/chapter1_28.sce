//example1.28
clc
disp("Convert the delta of 2ohm, 3ohm and 5ohm to equivalent star as shown in the fig 1.101(a)")
r=15/10
disp(r,"R1(in ohm)=(5*3)/(5+3+2)=")
r=6/10
disp(r,"R2(in ohm)=(3*2)/(5+3+2)=")
r=10/10
disp(r,"R3(in ohm)=(5*2)/(5+3+2)=")
disp("Convert the delta of 1ohm, 5.6ohm and 4ohm to equivalent star as shown in the fig 101(c)")
r=5.6/10.6
format(7)
disp(r,"R4(in ohm)=(5.6*1)/(1+5.6+4)=")
r=(5.6*4)/10.6
disp(r,"R5(in ohm)=(5.6*4)/(1+5.6+4)=")
r=4/10.6
disp(r,"R6(in ohm)=(1*4)/(1+5.6+4)=")
r=3.4705+0.3773
disp(r,"Therefore, R_ab(in ohm)=3.4705+0.3773=")
