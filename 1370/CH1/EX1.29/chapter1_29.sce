//example1.29
clc
disp("Convert the inner delta of 5ohm to equivalent star. As all the resistances of delta are same, all the resistances of equivalent star will be equal of value ")
r=25/15
disp(r,"R(in ohm)=(5*5)/(5+5+5)=")
disp("Convert the delta of 6.667ohm, 5ohm and 11.667ohm")
r=(6.667*11.667)/(6.667+11.667+5)
format(7)
disp(r,"R1(in ohm)=(6.667*11.667)/(6.667+11.667+5)=")
r=(6.667*5)/(6.667+11.667+5)
disp(r,"R2(in ohm)=(6.667*5)/(6.667+11.667+5)=")
r=(5*11.667)/(6.667+11.667+5)
format(7)
disp(r,"R3(in ohm)=(5*11.667)/(6.667+11.667+5)=")
r=5.333+2.612
format(7)
disp(r,"Therefore,  R_ab(in ohm)=5.333+2.612=")
