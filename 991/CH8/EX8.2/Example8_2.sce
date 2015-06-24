//Example 8.2.
clc
format(6)
Vdc=150
Vm=230*sqrt(2)
RL=10
disp("For an SCR full wave rectifier,")
disp("            Vdc = (Vm/pi)*(1+cos(theta))")
x=acosd(((Vdc*%pi)/Vm)-1)
disp(x,"Therefore,    theta =")
disp("For 50Hz, T = 20 ms for 360")
format(5)
t = (20/360)*x
disp(t,"Therefore      t(ms) = (20*10^3/360)*63.34 = ")
Iav=Vdc/RL
disp(Iav,"Load current,    Iav(A) = Vav / RL =")