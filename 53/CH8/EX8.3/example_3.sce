//caption:wein bridge oscillator
//To design a wein bridge oscillator of frequency fo=10KHz
fo=10000;//in Hz
printf("Capacitance C,Resistance R and Frequency fo are related as C*R=1/(2*pi*fo)\n");
printf("If C*R=A\n");
A=1/(2*%pi*fo);
C=0.01*(10^-6);//in farads
R=A/C;//in ohms
B=R/1000;//to convert to Kohms
printf("Taking C=0.01microfarad, we get R=%1.2f Kohms\n",B);//in Kohms
printf("Gain of a non-inverting amplifier should be 3 i.e. Av=1+(R1/R2)=3\n");
printf("This gives (R1/R2)=2, by selecting R2=10 Kohms, we get R1=20 Kohms\n");
R2=10;
R1=20;//in Kohms
printf("The gain must be restricted between 2.8 to 3.2, by selecting proper resistors Ra and Rb such that R1=Ra||Rb this can be achieved.\n");
printf("These values of Ra and Rb comes out to be Ra=22Kohms and Rb=220Kohms\n");
printf("RESULTS:\n");
printf("design values are R=%1.2f Kohms, C=0.01 microFarad,Ra=22 Kohms,Rb=220 Kohms\n",B);