//input impedance
//given
clc
Zl=0//ohm
Bl=2*%pi/8//rad
Zo=75//ohm
Zi=Zo*(Zl+%i*Zo*tan(Bl))/(Zo+%i*Zl*tan(Bl))
disp(Zi,'the input impedance at point')//ohm
