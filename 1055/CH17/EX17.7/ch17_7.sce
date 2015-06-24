// To determine the centre and radius for the pull out curve ans also minimum output vars when the output powers are (i)0 (ii).25p.u (iii) .5p.u
clear 
clc;
Pc=0;
V=.98;
Qc=V^2*((1/.4)-(1/1.1))/2;
R=V^2*((1/.4)+(1/1.1))/2;
Q=-(.98^2*((1.1-.4)/.44)/2) + (.98^2)*1.5/(2*.44);
mprintf("(i)Q=%.2f MVAr\n",abs(Q)*100);
P=.25;
Q2=-((1.637^2)-(.25^2))^.5 + .7639;
mprintf("(ii)Q=%.4f p.u\n",Q2);
Q3=-((1.637^2)-(.5^2))^.5 + .7639;
mprintf("(iii)Q=%.4f p.u",Q3);
