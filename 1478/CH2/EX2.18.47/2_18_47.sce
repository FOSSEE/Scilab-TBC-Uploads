//water and its treatment//
//example 2.18.47//
clc
volume_hardwater=20//in litres//
H=375//Hardness of water(mg/lit) or ppm//
CaCO3_equivalent=volume_hardwater*H//in terms of (gms/lit)//
conc_NaCl=20//% NaCl consumed by zeolite bed//
Wt_per_Litre=conc_NaCl*10//gms NaCl consumed by zeolite bed per litre//
total_wt=CaCO3_equivalent*58.5/50//total gms NaCl consumed by zeolite bed//
volume_NaCl=total_wt/Wt_per_Litre//in litres//
printf("\nVolume of NaCl solution required is %.f litres",volume_NaCl);