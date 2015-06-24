//input impedance
//given
clc
Zl=0//ohm
Zo=50//ohm
Bl=2*%pi*0.1//((2*pi/lem)*lem)
Zi=Zo*(Zl+%i*Zo*tan(Bl))/(Zo+%i*Zl*tan(Bl))//the input impedence in ohm
Zi=round(Zi*100)/100///rounding off decimals
disp(Zi,'the input impedance of 50ohm loss less transmission line')
