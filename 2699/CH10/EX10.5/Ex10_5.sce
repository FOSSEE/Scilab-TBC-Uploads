//EX10_5 PG-10.35
clc
R1=10e3;
Rf=50e3;//feedback resistance
Vcc=12;//supply voltage in volts
A=-Rf/R1;//gain of an inverting amplifier
A=abs(A);//magnitude of the gain
printf("If Vm=0.5V then")
Vm=0.5;//peak value of the input voltage
Vo=A*Vm;//output voltage
printf("\n peak value of the output voltage Vo=%.1f V \n",Vo)
printf("\n if Vm=5V then")
Vm=5;//peak value of the input voltage
Vo1=A*Vm;//output voltage
printf("\n peak value of the output voltage Vo=%.0f V \n",Vo1)
disp("but the opamp output saturates at +/- 12V hence portion above +12V and")
printf(" below -12V will be clipped off.So 25V \n peak output is not practically possible it will show upto +/- 12V")
clf()   

subplot(2,1,1)        //input voltage Vin=0.5V peak
x=0:%pi/100:9
 y=0.5*sin(x)
 plot(x,y)
xtitle("(Vin)m=0.5V" ,"time","Input voltage Vin= 0.5V peak")
 xgrid(color("grey"));

subplot(2,1,2)         //output voltage Vo=2.5V peak                  
 x=0:%pi/100:9
 y=-Vo*sin(x)        //output is inverted 
 plot(x,y)
xtitle("(Vin)m=0.5V" ,"time","Output voltage(inverted) Vo=2.5V peak")
 xgrid(color("grey"));

xset('window',1)
clf()

subplot(2,1,1)        //input voltage Vin=5V peak
x=0:%pi/100:9
 y=5*sin(x)
 plot(x,y)
xtitle("(Vin)m=5V" ,"time","Input voltage Vin=5V peak")
 xgrid(color("grey"));

subplot(2,1,2)        //output voltage Vo=25V peak but clipped at + or-12V 
 x=0:%pi/100:9
 y=-Vo1*sin(x)       //output is inverted
y(find(y > 12)) =  12; 
y(find(y < -12))= -12;
 plot(x,y,style=3)
xtitle("(Vin)m=5V" ,"time","Output voltage(inverted) Vo=12V clipped")
 xgrid(color("grey"));
