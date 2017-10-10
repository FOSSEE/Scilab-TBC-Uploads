//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.3.2
clc;
clear ;
//given

g=106;//maximum gain coefficient in 1/cm
alpha=14;//loss coefficient of a cavity in 1/cm
GAMA=0.8;//confinement factor
L1=50E-3;//assumed length of a typical travelling-wave semiconductor amplifier in cm
y=GAMA*g-alpha;
z=y*L1;
Gs1=exp(z);//Gain of a travelling-wave semiconductor amplifier
mprintf("Gain of a travelling-wave semiconductor amplifier = %.2f.or  %.1f ",Gs1,10*log10(Gs1));
//case 2
L2=100E-3;//assumed length of a typical travelling-wave semiconductor amplifier in cm
y=GAMA*g-alpha;
z=y*L2;
Gs2=exp(z);//Gain of a travelling-wave semiconductor amplifier
mprintf("\nGain of a travelling-wave semiconductor amplifier = %.2f.or  %.1f ",Gs2,10*log10(Gs2));
