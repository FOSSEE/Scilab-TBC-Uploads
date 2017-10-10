// chapter 12
// example 12.1
// page 235

V_CC=6 // V
R_C=2.5 // kilo ohm

// for faithful amplification V_CE should not be less than V_CC for Si transistor so
V_max=V_CC-1
I_max=V_max/R_C

// As negative and positive half cyces of input are equal, change in collector current will be equal and opposite so
I_min=I_max/2

printf("Maximum allowable collector current = %.3f mA \n",I_max)
printf("Minimum zero signal collector current = %.3f mA \n",I_min)

// the circuit diagram is constructed on xcos and its screenshot has been taken.
// the waveform given can not be obtained in xcos unless we assume necessary values as data is insufficient for plotting graph in scilab.
// so waveform is constructed as below

clf()
x=linspace(1,5*%pi,100)
[t]=sin(x)+1
plot(x,[t])
xtitle("max and min allowable collector currents","t","i_c (mA)") 
