//Chapter 7, Problem 12
clc

Vg=200e-3                       //generator voltage
Zg=2000                         //resistance in ohm
//transistor Y-parameter
Y11=1/1200
Y12=0
Y21=70/1200
Y22=1/40000
Yl=1/1000
Y1=[Y11 Y12;Y21 Y22]
Yf=[1/10000 -1/10000;-1/10000 1/10000]

//calculation
Yc=Y1+Yf
dely=Yc(1,1)*Yc(2,2)-Yc(1,2)*Yc(2,1)
Zin=(Yc(2,2)+Yl)/(dely+(Yc(1,1)*Yl))
vin=(Zin*Vg)/(Zin+Zg)
Av=-Yc(2,1)/(Yc(2,2)+Yl)
vout=vin*Av

printf("(a) Input impedance (Zin) = %.1f ohm\n\n",Zin)
printf("(b) Gain (Av) of the circuit = %.2f\n\n",Av)
printf("(c) Output voltage = %d mV\n\n",vout*10^3)
