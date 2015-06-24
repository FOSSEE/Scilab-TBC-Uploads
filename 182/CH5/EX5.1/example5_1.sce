// to find the high and low output voltage values
// example 5-1 in page 120
clc;
//Given data
Vcc=5;// DC source in volts
Io=1e-3;// output current= 1mA 
R1=1e+3;//R1=1K-ohm
Vi=0;//lowest input voltage
Vd=0.7;// silicon-diode drop in volts
//calculation
printf("High output voltage=%d V\n",Vcc-(Io*R1));
printf("low output voltage=%.1f V\n",Vi+Vd);
//result
//High output voltage=4 V
//low output voltage=0.7 V