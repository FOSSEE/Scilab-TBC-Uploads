//chapter 18
//example 18.1
//page 559
clear all;
clc ;
//given
Rl=15;//load resistance
ep=30;//peak ip voltage
Rg=1;//gate resistance kohm
//forward blocking voltage VfXm>30 for SCR to remain in off until triggered

VAK=1;
Ip=(ep-VAK)/Rl;
//rms value of Il
Irms=0.5*Ip;
printf("\nIrms=%.2f A and ep=%d V",Irms,ep);
printf("\nC6F is suiatable SCR with VFXM=50 V,current range allowable is 1.6 A");

//from chart
Vg=0.5;//Trigger voltage
Ig=0.025//mA
Irg=Vg/Rg;
It=Ig+Irg;//trigger current
printf("\nTrigger voltage=%.1f V and trigger current=%.3f mA",Vg,It);
Ih=1;
Il=Ih;
ei=VAK+1000*Il*Rl;
ei=1;
printf("\nei=%d V\nSCR will switch off when ei falls below 1 V",ei);
