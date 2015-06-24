//Calculate Vgs and Rs
clear;
clc;
//soltion
//given

Vp=2;//V
Idss=1.75*10^-3;//A      //drain current at Vgs=0
Vdd=24;//V             //drain to supply source
Id=1*10^-3;//A       //drain current
Vgs=(-Vp)*(1-sqrt(Id/Idss));
Rs=abs(Vgs)/Id;
printf("Vgs = %.3f V\n",Vgs);
printf("Rs = %.0f Ω",Rs);
 
