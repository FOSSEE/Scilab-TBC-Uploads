//Chapter 21, Example 21.1

clc
//Initialisation

vo=2.5                //Output Voltage
vi=0.01                //input voltage

//Calculation
sn=20*log10(vo/vi)          //signal to noise ratio


//Results
printf("S/N Ratio = %d dB",round(sn))

