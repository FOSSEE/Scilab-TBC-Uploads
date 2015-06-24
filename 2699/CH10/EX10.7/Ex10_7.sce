//EX10_7 PG-10.37
clc
R1=1e3;
Rf=10e3;//feedback resistance
Vin=100e-3;//input voltage peak to peak
A=-Rf/R1;//gain of an inverting amplifier
Vo=A*Vin;
printf("\n peak to peak value of the output voltage Vo = %.0f V \n",Vo)
printf("\n voltage gain of the inverting amplifier  Af = %.0f \n ",A)
//plotting of the waveforms
clf() 

 subplot(2,1,1)    //input voltage Vin=0.5V peak
x=0:%pi/100:9          
 y=50*sin(x)
 plot(x,y)
xtitle("Input voltage Vin " ,"time","Vin=100mV peak to peak")
 xgrid(color("grey"));
subplot(2,1,2)      //output voltage Vo=2.5V peak
 x=0:%pi/100:9          
 y=-500*sin(x)
 plot(x,y)
xtitle("Output voltage Vo" ,"time","Vo=1000mV peak to peak")
 xgrid(color("grey"));
 
