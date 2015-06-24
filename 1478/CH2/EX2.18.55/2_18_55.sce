//water and its treatment//
//example 2.18.55//
clc
Hardness=450//Hardness of water(mg/lit) or ppm//
H=Hardness/1000//Hardness of water(gms/lit)//
volume_NaCl=150//Volume of NaCl//
Wt_per_Litre=50//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.505//in terms of (gms/lit)//
volume_hardwater=CaCO3_equivalent/H
printf("\nQuantity of water softened using zeolite bed is %.f litres",volume_hardwater);