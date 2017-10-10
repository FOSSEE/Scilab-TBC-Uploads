//water//
//page 1.87 example 4//
clc
Hardness=500//Hardness of water(mg/lit) or ppm//
H=Hardness/100//Hardness of water(gms/lit)//
volume_NaCl=100//Volume of NaCl//
conc_NaCl=120//% NaCl consumed by zeolite bed//
Wt_per_Litre=conc_NaCl*10//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.48//in terms of (gms/lit)//
volume_hardwater=CaCO3_equivalent/H
printf("\nQuantity of water softened using zeolite bed is %.f litres",volume_hardwater);