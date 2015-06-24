//Example 11.1

clear;

clc;

Vimin=7;

Vimax=25;

Vo=5;

delVi=Vimax-Vimin;

delVovi=3*10^(-3);

Iomin=0.25;

Iomax=0.75;

delIo=Iomax-Iomin;

delVoio=5*10^(-3);

RRRdB=78;

f=120;

liner=delVovi/delVi;

linerper=100*(liner/Vo);

loadr=delVoio/delIo;

loadrper=100*(loadr/Vo);

zo=delVoio/delIo;

Vri=1;

Vro=Vri/(10^(RRRdB/20));

printf("(a) Line Regulation=%.4f percent/V",linerper);

printf("\n    Load Regulation=%.1f percent/A",loadrper);

printf("\n    Output Impedance=%.2f ohms",zo);

printf("\n\n(b) Amount of Output Ripple for every volt of Vri=%.3f mV",Vro*10^3);