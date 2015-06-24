//EX10_6 PG-10.36
clc
R1=10e3;
Rf=47e3;//feedback resistance
Vcc=12;//supply voltage
A=-Rf/R1;//gain of an inverting amplifier
A=abs(A);//magnitude of the gain of an inverting amplifier
Vin=2;//peak to peak input voltage
Voo=Vin*A;//peak to peak output voltage
//the AC voltmeter measures the rms value
Vo=Voo/2;//peak output voltage
Vrms=Vo/sqrt(2);//rms value of the output voltage
printf("\n Reading on the AC voltmeter is %.4f V \n",Vrms)
