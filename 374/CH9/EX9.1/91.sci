//chapter 9 example 1//
clc
clear
//length of multimode fibre=L1,measured output voltage=Vf,measured output voltage after adding=Vn,fibre cut back to a length=L2,attenuation=adB//
L1=2;//in km//
L2=0.002;//in km//
Vn=10;//in volts//
Vf=2.1;//in volts//
p=log(Vn/Vf)*0.43;
adB=(10*p)/(L1-L2);
printf("\n attenuation per km=%f m\n",adB)