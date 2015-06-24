// 2.37
clc;
displacement=0.5;
Vo=2*10^-3;
Se_LVDT=Vo/displacement;
printf("senstivity of the LVDT=%.3f V/mm",Se_LVDT)
Af=250;
Se_instrument=Se_LVDT*Af;
printf("\nSenstivity of the instrument=%.1f V/mm",Se_instrument)
sd=5/100;
Vo_min=50/5;
Re_instrument=1*1/1000;
printf("\nresolution of instrument=%.3f mm",Re_instrument)
