//example1.27
clc
disp("The circuit can be redrawn as shown in the fig 1.99(a)")
disp("fig 1.99(a,b) see on next page")
disp("Therefore, R_eq=[30(10+R)/(30+10+R)]=(300+30R)/(40+R)")
disp("Therefore, I=V/(R_eq)   i.e   6=30/[(300+30R)/(40+R)]")
disp("6(300+30R)=50(40+R)   i.e.    1800+180R=2000+50R")
r=200/130
format(7)
disp(r,"R(in ohm)=")
disp("By current division rule,")
i=(6*11.5384)/41.5384
format(6)
disp(i,"I1(in A)=[(I_t)*(10+R)/(10+R+30)]=")
i=(6*30)/41.5384
disp(i,"I2(in A)=[(I_t)*30/(10+R+30)]=")
disp("Key point: Cross check I1+I2= 6 A")
