//Example 8.1.
clc
format(6)
Vm=220
V1=110
RL=100
disp("We have,")
disp("                  V1 = Vm*sin(theta)")
disp("Therefore,")
x=asind(V1/Vm)
disp(x," Firing angel, theta =")
ca=180-x
disp(ca,"    Conduction angle = 180 - theta =")
disp("Average voltage, Vav = (Vm/2pi) * (1+cos(theta))")
Vav = (Vm/(2*%pi))*(1+cosd(x))
disp(Vav,"              Vav(V) =")
format(7)
Iav=Vav/RL
disp(Iav,"Average current,  Iav(A) = Vav / RL =")
po=Vav*Iav
disp(po,"Power output(W) = Vav*Iav =")
disp("As, V1 = Vm*sin(theta) = Vm*sin(omega*t),")
disp("     omega*t = theta = 30 =  pi/6")
disp("     (2*pi)*(50*t) = pi/6")
disp("Therefore, the time during which the SCR remains OFF is")
format(6)
t=1/(2*6*50)
t1=t*10^3
disp(t1,"       t(ms) = ")