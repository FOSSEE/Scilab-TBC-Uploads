//example3.15
clc
x=250*800
disp(x,"a)The output power at full load(in watt)=")
disp("THe input power at full load =(200*10^3)/0.98135")
disp("The total loss = Input-Output")
t=((200*10^3)/0.98135)-200000
format(8)
disp(t,"= ")
disp("Therefore, P_i + P_c = 3800.88        (i)")
disp("where     P_i= Iron loss  ,P_c = Full load copper loss")
p=125*800
disp(p,"The power output at half load=125*10^3 *0.8=")
disp("The power input at half load = (100*10^3)/0.97751")
x=((100*10^3)/0.9775)
disp(x,"Total loss = (100*10^3)/0.9775 - 100*10^3 =")
disp("(P_i)+ (0.5^2)*(P_c) = 2300.74")
disp("(P_i)+ (0.25)*(P_c) = 2300.74         (ii)")
disp("From equations (i) and (ii),")
disp("0.75*(P_i)=3800.88-2300.74")
p=(3800.88-2300.74)/0.75
disp(p,"Therefore, P_i(in watt)=")
z=3800.88-2000.18
disp(z,"P_c(in watt)=")
