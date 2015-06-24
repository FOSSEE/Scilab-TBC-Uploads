clc
disp("Example 2.12")
printf("\n")
disp("Calculate DC,RMS load voltage,PIV across diode,Rectification efficiency,DC power delivered to load,Frequency of output waveform ")
printf("Given\n")
Rf=50
RL=500
N1=10
N2=1
V1=230
Vm=(N2/N1)*V1
w=314
f=w/(2*%pi)
Vdc=(Vm/%pi)/(1+(Rf/RL))    //DC load voltage
Vrms=(Vm/2)/(1+(Rf/RL))     //RMS load voltage
PIV=Vm
%n=40.6/(1+(Rf/RL))         //Rectification efficiency
Pdc=(Vdc^2)/RL
printf("DC,RMS load voltage=\n%f volt\n%f volt\n",Vdc,Vrms)
printf("PIV across the diode =\n%f volt\n",PIV)
printf("Rectification efficiency=\n%f\n",%n)
printf("DC power delivered to a load=\n%f watt\n",Pdc)
