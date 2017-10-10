//water//
//page 1.52 example 5//
clc
volume_hardwater=100000//in litres//
volume_NaCl=400//Volume of NaCl in litres//
conc_NaCl=100//% NaCl consumed by zeolite bed//
Wt_per_Litre=conc_NaCl*10//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
H=CaCO3_equivalent/volume_hardwater//Hardness of water(gms/lit)//
Hardness=H*100//Hardness of water(mg/lit) or ppm//
printf("\nHardness of water sample is %.1f mg/L",Hardness);