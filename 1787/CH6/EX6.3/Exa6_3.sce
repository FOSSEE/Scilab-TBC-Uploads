//Exa 6.3
clc;
clear;
close;
//given data
alfaDC=0.98;//unitless
ICBO=4;//in uA
ICBO=ICBO*10^-3;//in mA
IB=50;//in uA
IB=IB*10^-3;//in mA
//Formula : IC=alfaDC*(IB+IC)+ICBO
IC=alfaDC*IB/(1-alfaDC)+ICBO/(1-alfaDC);//in mA
IE=IC+IB;//in mA
disp(IE,"Emitter current in mA : ");
disp(IC,"Collector current in mA : ");