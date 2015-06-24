//water and its treatment//
//example 2.18.53//
clc
volume_hardwater=75000//in litres//
volume_NaCl=1500//Volume of NaCl in litres//
conc_NaCl=117//mgs NaCl consumed by zeolite bed per litre//
Wt_per_Litre=conc_NaCl/1000//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
H=CaCO3_equivalent/volume_hardwater//Hardness of water(gms/lit)//
Hardness=H*1000//Hardness of water(mg/lit) or ppm//
printf("\nHardness of water is %.fppm or mg/lit",Hardness);