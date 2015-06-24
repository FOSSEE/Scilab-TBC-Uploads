//caption:Design of phase shifter
//example9.1
disp("Given frequency fo=10 KHz,Vrms=5 V,phi=10 degrees\n");
disp("Taking A=C3*R4\n");
phi=10;//in degrees
fo=1000;//in Hz
disp("phi=180-2(atan(2*%pi*f*A))");
A=tan((180-10)*%pi/(180*2))/(2*fo*%pi);
printf("Therefore A=C3*R4=%f sec.\n",A);
R4=10000;//let (in ohms)
printf("C3 and R4 values are selected such that their product equals or greater than %f, The above values are preferable for low cost and bias compensation",A);
C3=A/R4;
printf("\nC3=%f uF",C3*10^6);
disp("To lower the cost of design,the preferred value is C31=0.22uF");
C31=0.22;//let Such that C31>C3
disp("since,C31*R4>A,C31 can be preferred")
printf("Similarly, R1 and R2 values should be of Good matching to obtain accurate unity gain modulus ");
printf("RESULTS:\n");
printf("(i)Resistors, R1=R2=10Kohms\n");
printf("(iii)R4=%d Kohms\n",R4/1000);//divided by 1000 to display in Kohms
printf("(iii)Capacitor, C3=%1.2f uF\n",C31);
