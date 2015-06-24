//input of lossless transmission line
//given
clc
Zo=50//ohms
Zl=%inf//defined as infinity
Bl=2*%pi*0.1
Zi=(Zo*(1+%i*(Zo/Zl)*tan(Bl))/(Zo/Zl+%i*tan(Bl)))//taking Zl common from numerrator and denominator
Zi=round(Zi*100)/100///rounding off decimals
disp(Zi,'the input of 50ohm lossless transmission line')//ohm
