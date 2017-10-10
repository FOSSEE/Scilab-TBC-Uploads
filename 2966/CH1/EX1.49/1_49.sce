//water//
//page 1.72 example 1//
clc
vol_init=50//initial volume of sample in ml//
vol_fin=80//final volume of sample in ml//
DOb=840//dissolved O2 present in effluent sample before incubation in ppm//
DOi=230//dissolved O2 present in effluent sample after incubation in ppm//
DF=vol_fin/vol_init//dilution factor//
BOD=(DOb-DOi)*DF//in ppm//
printf("\nBiological Oxygen Demand(BOD) of the sample is %.f ppm",BOD);