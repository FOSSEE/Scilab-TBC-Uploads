// Determine the reactance to neutralize the capacitance of (i)100% of the length of line (ii)90% of the length of line (iii)80% of the length of line
clear
clc;
wL=1/(3*314*(10)^-6);
mprintf("(i)inductive reactance for 100 percent of the length of line=%.1f ohms\n",wL);
wL=10^6/(3*314*.9);
mprintf("(ii)inductive reactance for 90percent of the length of line=%.1f ohms\n",wL);
wL=1/(3*314*(10)^-6)/.8;
mprintf("(iii)inductive reactance for 80 percent of the length of line=%.1f ohms\n",wL);
