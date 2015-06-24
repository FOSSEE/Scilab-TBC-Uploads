//chapter 18
//example 18.5
//page 576
clear;
clc ;
//given
VB1B2=30;
etamin=0.55;
etamax=0.82;//efficiency
Vpmin=0.7+(etamin*30);
Vpmax=0.7+(etamax*30);
printf("\nDevice will fire at emitter voltage between %.1f V and %.1f V",Vpmin,Vpmax);


