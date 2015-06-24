//water and its treatment//
//example 2.18.54//
clc
Hardness=500//Hardness of water(mg/lit) or ppm//
H=Hardness/1000//Hardness of water(gms/lit)//
volume_NaCl=1000//Volume of NaCl//
Wt_per_Litre=100//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
volume_hardwater=CaCO3_equivalent/H
printf("\nQuantity of water softened using zeolite bed is %.f litres",volume_hardwater);