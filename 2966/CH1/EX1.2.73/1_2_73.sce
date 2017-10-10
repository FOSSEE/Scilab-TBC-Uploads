//water//
//page 1.73 example 2//
clc
Vb=27//volume of ferrous ammonium sulphate in blank experiment in ml//
Vt=6.5//volume of ferrous ammonium sulphate in test experiment in ml//
N=0.1//concentration in Normals//
Ve=25//volume of water sample taken in test in ml//
COD=(Vb-Vt)*N*8/Ve//in ppm//
printf("\nChemical Oxygen Demand(COD) of the sample is %.3f ppm",COD);