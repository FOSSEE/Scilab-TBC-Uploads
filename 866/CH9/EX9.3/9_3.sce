clc
//initialisation of variables
M= 100*10^6 //Nmm
BeamB= 300 //mm
BeamH= 200 //mm
BeamT= 25 //mm
BeamT2= 20 //mm
//CALCULATIONS
Iy= (2*BeamT2*BeamH^3/12)+((BeamB-2*BeamT2)*BeamT^3/12)
alphabyz=-M/Iy
//RESULTS
printf ('sigmax= %.2f *z',alphabyz)

