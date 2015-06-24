//to find the terminal oscilloscope voltage and its frequency
// exmaple 9-8 in page 264
clc;
//Data given
Vs=1; //supply voltage in volt
Rs=600;//source resistance in ohm
Ri=1e+6;//input resistance in ohm 
Ci=30D-12;//input parallel capacitance in farad
Ccc=100D-12;//coaxial cable capacitance in farad
f=100;// signal frequency in hertz
//calculation
Vi=Vs*Ri/(Rs+Ri);// input voltage in volts
Xc=1/(2*%pi*f*(Ci+Ccc));//capacitive reactance in ohm for total capacitance 
printf("the input terminal voltage at 100 Hz =%.4f V\n",Vi);
printf("when Vi=(Vs-3 dB),\n");
f=1/(2*%pi*(Ci+Ccc)*Rs);// frequency in hertz
printf("frequency=%.2f MHz",f/10^6);
//result
//the input terminal voltage at 100 Hz =0.9994 V
//when Vi=(Vs-3 dB),
//frequency=2.04 MHz 