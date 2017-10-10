//water//
//page 1.50 example 2//
clc
volume_hardwater=75000//in litres//
volume_NaCl=1500//Volume of NaCl in litres//
conc_NaCl=1.170/100//% NaCl consumed by zeolite bed//
Wt_per_Litre=conc_NaCl*10//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
H=CaCO3_equivalent/volume_hardwater//Hardness of water(gms/lit)//
Hardness=H*1000//Hardness of water(mg/lit) or ppm//
printf("\nHardness of water sample is %.f ppm",Hardness);