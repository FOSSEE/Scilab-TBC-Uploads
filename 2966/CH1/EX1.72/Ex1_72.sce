//water//
//page 1.90 example 5//
clc
volume_hardwater=15000//in litres//
volume_NaCl=120//Volume of NaCl in litres//
Wt_per_Litre=30//% NaCl consumed by zeolite bed//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
H=CaCO3_equivalent/volume_hardwater//Hardness of water(gms/lit)//
Hardness=H*1000//Hardness of water(mg/lit) or ppm//
printf("\nHardness of water sample is %.1f ppm",Hardness);