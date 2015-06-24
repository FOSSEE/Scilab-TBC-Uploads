//Chapter 18, Problem 2
clc;
//initializing the variables:
c = 4E-6;                       //capacitance in farad
r = 220000;                     //resistance in ohm
V = 24;                         //supply voltage
t1 = 1.5; 

//calculation:
taw = r*c
t = 0:0.1:10
Vc = V*(1-%e^(-1*t/taw));
plot2d(t,Vc)
xtitle("capacitor voltage/time characteristic", "t", "Vc")
xset('window',1)
VR = V*(1-%e^(-1*t/taw));
plot2d(t,VR)
xtitle("resistor voltage/time characteristic", "t", "VR")
xset('window',2)
I = V/r
i = I*%e^(-1*t/taw)
plot2d(t,i)
xtitle("current/time characteristic", "t", "i")
Vct1 = V*%e^(-1*t1/taw)
VRt1 = V*%e^(-1*t1/taw)
it1 = I*%e^(-1*t1/taw)

printf("\n The value of capacitor voltage is %.2f V,\n\n resistor voltage is %.2f V,\n\n current is %.1E A at one and a half seconds after discharge has started.",Vct1, VRt1,it1)
