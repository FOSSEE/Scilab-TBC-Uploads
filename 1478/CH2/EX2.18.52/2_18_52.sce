//water and its treatment//
//example 2.18.52//
clc
Hardness=50//Hardness of water(mg/lit) or ppm//
H=Hardness/1000//Hardness of water(gms/lit)//
volume_NaCl=100//Volume of NaCl//
conc_NaCl=1200//mgs NaCl consumed by zeolite bed per litre//
Wt_per_Litre=conc_NaCl/1000//gms NaCl consumed by zeolite bed per litre//
total_wt=Wt_per_Litre*volume_NaCl//total gms NaCl consumed by zeolite bed//
CaCO3_equivalent=total_wt*50/58.5//in terms of (gms/lit)//
volume_hardwater=CaCO3_equivalent/H
printf("\nCaCO3 equivalent is %.2f mgs",CaCO3_equivalent*1000);
printf("\nQuantity of water softened using zeolite bed is %.f litres",volume_hardwater);