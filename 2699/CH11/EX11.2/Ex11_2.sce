//EX11_2 PG-11.19
clc
Vd=2;//voltage per division in(V/div)
Td=2e-3;//time base division in (s/div)
Vdiv=3;//vertical occupancy in division as shown in the screen
Vpp=Vd*Vdiv;//peak to peak voltage 
Vm=Vpp/2;//peak voltage
Vrms=Vm/sqrt(2);//rms value of the output voltage
printf("\n Therefore rms value of the output voltage in volts=%.4f V \n",Vrms)
Hdiv=2;//horizontal occupancy in division as shown in the screen
T=Hdiv*Td;//time period of the waveform
f=1/T;//frequency
printf("\n Therefore frequency f=%.0f Hz \n ",f)
