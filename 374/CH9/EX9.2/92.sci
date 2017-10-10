//chapter 9 example 2//
clc
clear
//length of multimode fibre=L1,measured output optical pwer at far end=Pf,measured output optical power at near end=Pn,fibre cut back to a length=L2,attenuation=adB//
L1=1.5;//in km//
L2=0.002;//in km//
Pn=385.4;//in microwatts//
Pf=50.1;//in micro watts//
k=log(Pn/Pf)*0.43;
adB=(10*k)/(L1-L2);
printf("\n attenuation per km=%f m\n",adB)