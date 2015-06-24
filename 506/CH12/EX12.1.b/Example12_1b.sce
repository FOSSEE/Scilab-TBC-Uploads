clear;
clc;

//Caption:Minimum value of coupling capacitance for a given FET
//Given Value
Ry=1;//in K
Rg=1;//in M
Ri=1;//in K
hOE=1/40;//in K^-1

//fL=1/(2*%pi*(ro+ri)*Cb)<=10

//Ro>1/hOE=40K  ro=Rc=1K.  Rb>Ri=1K   then  ri=1K

ro=1000;//in ohm
ri=1000;//in ohm

Cb=1/(2*%pi*10*(ro+ri));
disp('pF',Cb*(10^6),'Coupling Capacitance for given transistor=');

//end