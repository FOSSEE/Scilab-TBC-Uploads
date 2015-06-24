Bc=1.2288*10^6
Rb=9.6*10^3//baseband data rate
Gp=Bc/Rb//processing gain
GpdB=10*log10(Gp)//processing gain in dB

Rb1=4.8*10^3
Gp1=Bc/Rb1
Gp1dB=10*log10(Gp1)

Rb2=2.4*10^3
Gp2=Bc/Rb2
Gp2dB=10*log10(Gp2)

Rb3=1.2*10^3
Gp3=Bc/Rb3
Gp3dB=10*log10(Gp3)

Rb4=19.2*10^3
Gp4=Bc/Rb4
Gp4dB=10*log10(Gp4)
disp(GpdB,'processing gain in dB Gp(dB) at the baseband data rate of 9.6kbps')
disp(Gp1dB,'processing gain in dB Gp(dB) at the baseband data rate of 4.8kbps')
disp(Gp2dB,'processing gain in dB Gp(dB) at the baseband data rate of 2.4kbps')
disp(Gp3dB,'processing gain in dB Gp(dB) at the baseband data rate of 1.2kbps')
disp(Gp4dB,'processing gain in dB Gp(dB) at the baseband data rate of 19.2kbps')
