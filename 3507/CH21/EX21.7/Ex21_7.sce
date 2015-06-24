//chapter21
//example21.7
//page473

V=-10 // V
Vout=-0.7 // V

Vr=V-Vout

printf("output voltage = %.3f V \n",Vout)
printf("voltage across R = %.3f V \n",Vr)

// plotting input and output waveforms in same graph using following code instead of using xcos
clf()
t=linspace(0,%pi,100)
Vin=V*sin(t)
Vout=Vr*sin(t)
subplot(1,2,2)
plot2d(t,Vout,style=3,rect=[0,-0.7,10,11])
xtitle("Vout","t","volts")

subplot(1,2,1)
plot2d(t,Vin,style=2,rect=[0,-11,10,1])
xtitle("Vin","t","volts")
