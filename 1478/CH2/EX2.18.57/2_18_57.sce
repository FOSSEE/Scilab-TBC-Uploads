//water and its treatment//
//example 2.18.57//
clc
volume_hardwater=800//in litres//
volume_NaCl=40//Volume of NaCl in litres//
Wt_per_Litre=110//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
H=CaCO3_equivalent/volume_hardwater//Hardness of water(gms/lit)//
Hardness=H*1000//Hardness of water(mg/lit) or ppm//
printf("\nCaCO3 equivalent is %.1f gms",CaCO3_equivalent);
printf("\nHardness of water is %.2fppm",Hardness);