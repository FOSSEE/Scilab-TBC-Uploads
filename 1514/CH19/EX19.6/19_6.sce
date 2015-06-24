//chapter 19
//example 19.6
//page 606
clear all;
clc ;
//given
Vcc=20;//supply voltage V
Rl=2;//collector load resistance kohm
Vce=[Vcc 0]
Ic=[0 Vcc/Rl]
plot(Vce,Ic,'-.*');
xtitle('dc load line with points (20,0)and (0,10)','Vce in V','Ic in mA')
a=gca();
a.data_bounds=[-1,-0.5;21 11];
//from intersection of load line and illumination characteristics
printf("\nAt illumination level =0,output voltage=Vce= 20V")
printf("\nAt illumination level =20 mW/cm^2,output voltage= 12.5V")
printf("\nAt illumination level =40 mW/cm^2,output voltage= 4V")
