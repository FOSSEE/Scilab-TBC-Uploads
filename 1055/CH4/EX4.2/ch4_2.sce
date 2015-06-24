//To determine power input and output (i) star connected (ii)delta connected
clear
clc;
mprintf("when load is star connected\n");
Vln=400/sqrt(3);// Line to neutral voltage(V)
Z=7+ %i*11;//Impedence per phase
Il=231/Z;// line current(amp.)
I=abs(231/Z);
Pi=3*I*I*7;
Po=3*I*I*6;
mprintf("power input =%.0f watts\n",Pi);//Answers don't match due to difference in rounding off of digits
mprintf("power output=%.0f watts\n",Po);//Answers don't match due to difference in rounding off of digits
mprintf("when load is delta connected\n");
Ze=2+ %i*3;// equivalent impedence(ohm)
Zp=3+%i*5;// impedence per phase
il=231/Zp;//Line current(amps.)
IL=abs(il);
pi=3*IL*IL*3;
po=3*IL*IL*2;
mprintf("power input=%.1f watts\n",pi);//Answers don't match due to difference in rounding off of digits
mprintf("power output = %.0f watts \n",po);//Answers don't match due to difference in rounding off of digits
