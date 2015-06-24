//Ex_7_2
clc;
clear;
close;
//given data : 
format('v',6);
Beta=90;//unitless
IC=4;//mA(Collector Current)
alfa=Beta/(1+Beta);//current gain
IB=IC/Beta;//mA(Base Current)
IE=IC+IB;//mA(Emitter currenrt)
disp(alfa,"Value of alfa");
disp(IB*1000,"Base Current(micro A)");
disp(IE,"Emmiter Current(mA)");
