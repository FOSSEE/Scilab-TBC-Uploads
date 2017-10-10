//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.3.1
clc;
clear ;
//given

R=0.32;//Reflectance (power reflection coeeficient)

//case 1 Gs value assumed as 2
Gs=2;//assumed single-pass amplification factor

x=Gs*((1-R)^2);
y=(1-R*Gs)^2;
Gfpa=x/y;

mprintf("Gain of Fabry-Perot semiconductor optical amplifier = %.2f or %.1f dB for Gs=2",Gfpa,10*log10(Gfpa));

//case 2 Gs value assumed as 3
Gs2=3;//assumed single-pass amplification factor

x2=Gs2*((1-R)^2);
y2=(1-R*Gs2)^2;
Gfpa2=x2/y2;//Gain of Fabry-Perot semiconductor optical amplifier

mprintf("\nGain of Fabry-Perot semiconductor optical amplifier = %.2f or %.1f dB for Gs=3",Gfpa2,10*log10(Gfpa2));
