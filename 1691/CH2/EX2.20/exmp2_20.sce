//Example 2.20
clc
ri=(22*68*2)/((68*2)+(22*2)+(22*68))
format(7)
disp(ri,"R''_i(in k-ohm) = R1 || R2 || h_fe =")  //answer in textbook is wrong
disp("Now  R''_i + R3 = R")
r3=6.8-1.8243
disp(r3,"Therefore,  R3(in k-ohm) = R - R''_i =")
k=20/6.8
disp(k,"K = R_C / R =")
disp("Therefore,  f = 1 / 2*pi*RC*sqrt(6+4K)")
c=(1/(2*%pi*6.8*50*sqrt(6+(4*2.9411))*10^6))*10^12
format(8)
disp(c,"Therefore,  C(in pF) =")
hfe=(4*2.9411)+23+(29/2.9411)
disp(hfe,"And  h_fe >= 4 K + 23 + 29/K >=")
