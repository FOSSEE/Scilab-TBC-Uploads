//water//
//page 1.50 example 1//
clc
volume_hardwater=10000//in litres//
volume_NaCl=5000//Volume of NaCl in litres//
conc_NaCl=1170/10000//% NaCl consumed by zeolite bed//
Wt_per_Litre=conc_NaCl*10//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
H=CaCO3_equivalent/volume_hardwater//Hardness of water(gms/lit)//
Hardness=H*1000//Hardness of water(mg/lit) or ppm//
printf("\nHardness of water sample is %.f ppm",Hardness);