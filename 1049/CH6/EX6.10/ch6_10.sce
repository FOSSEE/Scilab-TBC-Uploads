clear;
clc;
V_s=230;
f=50;
a=50;
R=6;
E=60;
V_o=((sqrt(2)*2*V_s)/(%pi))*(cosd(a));
I_o=(V_o-E)/R;    printf("avg o/p current=%.3f A",I_o);

//ATQ after applying the conditions
V_o=((sqrt(2)*V_s)/(%pi))*(cosd(a));
I_o=(V_o-E)/R;    printf("\navg o/p current after change=%.4f A",I_o);
