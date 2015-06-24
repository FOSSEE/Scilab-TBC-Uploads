//EX3_16 PG-42
clc
Rl=100;//load resistance
Es=230;//rms value of input voltage
Rf=0;//ideal diode resistance
Rs=0;//neglecting transformer resistance
f=50;//frequency of the supply
Esm=sqrt(2)*Es;//peak value of the input voltage
Edc=2*Esm/%pi;//as Rf=0 ohm 
printf("\n Average DC voltage is %.0f V \n",Edc)
Im=Esm/Rl;
Idc=2*Im/%pi;
printf("\n Therefore DC load current is %.2f A \n",Idc)
f=2*f;//frequency of output waveform
printf("\n frequency of output waveform is %.0f Hz",f)
