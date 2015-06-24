//Determine the short circuit capacity of the breaker
clear 
clc;
Sb=8;// Base MVA
Zeq=(%i*.15)*(%i*.315)/(%i*.465);
Scc=abs(Sb/Zeq);
mprintf("short circuit capacity=%.2f MVA\n",Scc);
