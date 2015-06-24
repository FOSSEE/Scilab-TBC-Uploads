//water and its treatment//
//example 2.18.44.D//
clc
volume_hardwater=7000//in litres//
volume_NaCl=60//Volume of NaCl in litres//
conc_NaCl=10//% NaCl consumed by zeolite bed//
Wt_per_Litre=conc_NaCl*10//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
H=CaCO3_equivalent/volume_hardwater//Hardness of water(gms/lit)//
Hardness=H*1000//Hardness of water(mg/lit) or ppm//
printf("\nCaCO3 equivalent is %.1f gms",CaCO3_equivalent);
printf("\nHardness of water is %.1fppm",Hardness);