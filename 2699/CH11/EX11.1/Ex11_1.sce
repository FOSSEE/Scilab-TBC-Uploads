//EX11_1 PG-11.16
clc
disp("Refer to the figure-11.11 showwn")
disp("from the figure we can see that the screen is divided such")
disp("that one part of the half wave is sub-divided into 5 units")
disp("1subdivision=(1/5)units=0.2 units")
disp("amplitude of the positive peak signal=2division+3subdivision ")
disp("ie amplitude of the positive peak signal=2+3*0.2=2.6")
Vp=2+3*0.2;//amplitude of the peak voltage in terms of dividion
Vpp=2*Vp;//peak to peak voltage in terms of division
VA=2;//Vertical attenuation in (mV/div)
V=Vpp*VA;//required peak to peak output voltage in volts
Vm=V/2;//amplitude of the output voltage in volts
printf("\n Therefore amplitude of the output voltage in volts=%.1f mV \n",Vm)
Vrms=Vm/sqrt(2);//rms value of the output voltage
printf("\n Therefore rms value of the output voltage in volts=%.4f mV \n",Vrms)
