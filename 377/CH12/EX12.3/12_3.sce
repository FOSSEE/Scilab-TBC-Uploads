Vbi=0.74;
Vg=0.5;
c=13.2*8.854*10^-14;  //say c=Єs
q=1.6*10^-19;
Nd=5*10^16;
b=(2*c*(Vbi-Vg)/(q*Nd))^(1/2);
printf('\n The value of depletion width near drain is %f*10^-2 μm',b*10^6);
d=0.8-(b*10^4);
printf('\n The maximum undepleted channel width is near the drain end of the gate is %f μm',d);