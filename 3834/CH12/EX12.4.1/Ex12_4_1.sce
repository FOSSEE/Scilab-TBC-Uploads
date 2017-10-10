//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.4.1
clc;
clear ;
//given

//case 1 
Pin=300E-6;//light input power in W
Pout=60E-3;//output power in W

Gain=Pout/Pin;//Gain
x=log10(Gain);
Gdb=10*x;//Gain of erbium-doped fiber for case in dB

mprintf("Gain of erbium-doped fiber for case 1 = %.0f dB",Gdb);

//case 2
Pase=30E-6;//ASE power in W

Gdb2=10*log10(Gain-(Pase/Pin));//Gain of erbium-doped fiber for case 2 in dB
mprintf("\nGain of erbium-doped fiber for case 2 = %.0f dB",Gdb);
