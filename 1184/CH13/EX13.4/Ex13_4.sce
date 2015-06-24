//Example 13-4, Page No- 494

clear
clc

len =150
C =13.5
Z0 =93
f =2.5*10^6
attn_100ft =2.8

L =C*Z0^2
td =(L*C)^0.5
theta = ((360)*188.3)/(1/f)
attn_ft = attn_100ft/100
total_attn = attn_ft*150

printf('The load impedance required to terminate the the line\n  to avoid the reflections is %d ohm',Z0)
printf('\n The equivalent inductance per feet is %.2f nH',L/10^3)
printf('\n The time delay introduced by the cable per feet is %.3f ns',td/10^3)
printf('\n The phase shift occurs in degrees for the 2.5 Mhz sine wave is %.2f',theta/10^9)
printf('\n The total attenuation is %.1f dB',total_attn)

