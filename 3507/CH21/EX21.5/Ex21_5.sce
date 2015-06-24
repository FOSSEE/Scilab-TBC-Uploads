//chapter21
//example21.5
//page472

Vin_peak=12 // V

// for positive half cycle diode conducts so
Vout_peak=Vin_peak-0.7 // V

// for negative half cycle diode does not conduct so
Vout_min=0 // V

printf("peak output voltage = %.3f V in positive half cycle and \n                       %.3f V in negative half cycle",Vout_peak,Vout_min)

// plotting input and output waveforms in same graph using following code instead of using xcos
clf()
t=linspace(0,2*%pi,100)
Vin=12*sin(t)
Vout=Vout_peak*sin(t)+Vout_min
plot2d(t,Vin,style=2,rect=[0,0,10,20])
xtitle("input - blue     output - green","t","volts")
plot2d(t,Vout,style=3,rect=[0,0,10,20])
