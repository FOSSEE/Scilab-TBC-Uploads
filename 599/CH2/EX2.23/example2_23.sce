
clear;
clc;
printf("\t Example 2.23\n");
                //it is the case of equimolar conter diffusion as the tube is perfectly sealed to two bulbs at the end and the pressure throughout is constant
d=0.001;
area=3.14*(d/2)^2;     //area of the bulb
T=298;                  //temperature in kelvin 
p=1.013*10^5;          //total pressure of both the bulbs
R=8314;               //universal gas constant
c=p/(R*T);            //total concentration
Dab=.784*10^-4;      //diffusion coefficient in m^2/s
xa1=0.8;             //molefraction of nitrogen gas at the 1 end
xa2=0.25;            //molefraction of nitrogen gas at the 2nd end
z=.15;               //distance between the bulbs

    //rate=area*Na;
rate=area*Dab*c*(xa1-xa2)/z;    //rate of transfer of hydrogen and hydrogen
printf("\n the rate of transfer from 1 to 2 of  nitrogen and 2 to 1of hydrogen is :%f *10^-11kmol/s",rate/10^-11);
//end