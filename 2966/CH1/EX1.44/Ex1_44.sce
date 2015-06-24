//water//
//page 1.54 example 9//
clc
volume_hardwater=4500//in litres//
volume_NaCl=30//Volume of NaCl in litres//
Wt_per_Litre=100//% NaCl consumed by zeolite bed//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.55//in terms of (gms/lit)//
H=CaCO3_equivalent/volume_hardwater//Hardness of water(gms/lit)//
Hardness=H*1000//Hardness of water(mg/lit) or ppm//
printf("\nHardness of water sample is %.f ppm",Hardness);