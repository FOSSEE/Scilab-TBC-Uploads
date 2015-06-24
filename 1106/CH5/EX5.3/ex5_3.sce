// Example 5.3, Page No-249
clear
clc

Vclipl=0.35
Vp=0.5
gain=10
R=1000

Vounclip=Vp*gain
printf('When unclipped, output voltage= %.1f V', Vounclip)
Voclip=Vclipl*gain
printf('\nWhen clipped, output voltage= %.1f V', Voclip)
Vb=Voclip-0.7
printf('\nZener diode breakdown voltage= %.1f V', Vb)
printf('\nA 2.8V Zener diode should be connected')
