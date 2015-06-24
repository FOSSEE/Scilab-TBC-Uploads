//Example 9.8
clc
disp("LTP = -1.5 V  and  H = 2 V")
disp("Now         H = UTP - LTP")
disp("Therefore,  2 = UTP - (-1.5)")
disp("Therefore,  UTP = 0.5 V")
disp("In the fig.9.47, the angle theta can be obtained from equation of sine wave. Sine wave is represented as,")
disp("V_in = V_p*sin(pi+thata)    when  pi < omega*t < 2pi")
disp("At LTP,    -1.5 = 5*sin(pi+theta)")
disp("                = - 5*sin(theta)")
disp("Therefore,  sin(theta) = 0.3")
t=asind(0.3)
format(6)
disp(t,"Therefore,  theta(in degree) =")
disp("The time period of sine wave is,")
T=1
disp(T,"    T(in ms) = 1/f =")
disp("At UTP,    0.5 = V_p*sin(theta)")
disp("Therefore, 0.5 = 5 * sin(theta)")
disp("Therefore, sin(theta) = 0.1")
t=asind(0.1)
disp(t,"Therefore, theta(in degree) =")
disp("The time T1 for output is from 5.739 degree to (180 degree + 17.45 degree)")
t1=197.45-5.739
format(7)
disp(t1,"Therefore,  T1(in degree) =")
T1=(191.71/360)
disp(T1,"i.e.  T1(ms) =")
t2=1-0.5325
disp(t2,"and    T2(in ms) = T - T1 =")