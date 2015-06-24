//input impedance of a lossless transmission
//given
clc
Zo=100//ohm
Bl=(2*%pi)/3//ERROR 
Zl=150+%i*60
Zi=Zo*(Zl+%i*Zo*tan(Bl))/(Zo+%i*Zl*tan(Bl))//the input impedence in ohm
disp(Zi,'the input impedance of lossless transmission line in ohm:')
//ERROR in the calculation of the book as value of Bl=120*pi
