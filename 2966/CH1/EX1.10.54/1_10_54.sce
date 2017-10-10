//water//
//page 1.54 example 10//
clc
volume_hardwater=3500//in litres//
volume_NaCl=25//Volume of NaCl in litres//
Wt_per_Litre=100//% NaCl consumed by zeolite bed//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
H=CaCO3_equivalent/volume_hardwater//Hardness of water(gms/lit)//
Hardness=H*1000//Hardness of water(mg/lit) or ppm//
printf("\nHardness of water sample is %.1f ppm",Hardness);