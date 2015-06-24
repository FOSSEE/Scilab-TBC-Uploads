//chapter21
//example21.6
//page472

Rl=4 // kilo ohm
R=1 // kilo ohm
Vin_peak=10 // V

Vout_peak=Vin_peak*Rl/(Rl+R)
Vout_min=0 // because of diode
printf("peak output voltage = %.3f V \n",Vout_peak)

// plotting input and output waveforms in same graph using following code instead of using xcos
clf()
t=linspace(0,2*%pi,100)
Vin=Vin_peak*sin(t)
Vout=Vout_peak*sin(t)+Vout_min
plot2d(t,Vin,style=2,rect=[0,0,10,20])
xtitle("input - blue     output - green","t","volts")
plot2d(t,Vout,style=3,rect=[0,0,10,20])
