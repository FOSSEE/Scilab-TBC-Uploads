//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 6.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given - Case(i)
Lambda=589e-6;//wavelength of the sodium lamp in m
DeltaNu=5.1e11;//Linewidth of the sodium D lines in Hz
c=3e8;//Speed of light in air in m/s

mprintf("\n For Sodium Lamp:");
tc=1/DeltaNu;//Coherence time in s
mprintf("\n tc = %.1e s",tc);

Lc=tc*c;//length of emitted wave in m
mprintf("\n Lc = %.1f mm\n",Lc/1e-3);//Division by 10^(-3) to convert into mm


//given - Case(ii)
DeltaNu=1500e6;//Linewidth of He-Ne laser in Hz
c=3e8;//Speed of light in air in m/s

mprintf("\n For He-Ne Laser with many operating modes:");
tc=1/DeltaNu;//Coherence time in s
mprintf("\n tc = %.1e s",tc);

Lc=tc*c;//length of emitted wave in m
mprintf("\n Lc = %.1f m\n",Lc);


//given - Case(iii)
DeltaNu=1e6;//Linewidth of He-Ne laser in Hz
c=3e8;//Speed of light in air in m/s

mprintf("\n For He-Ne Laser with single operating mode:");
tc=1/DeltaNu;//Coherence time in s
mprintf("\n tc = %.1e s",tc);

Lc=tc*c;//length of emitted wave in m
mprintf("\n Lc = %.1f m\n",Lc);
