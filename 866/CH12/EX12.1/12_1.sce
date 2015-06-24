clc
//initialisation of variables
TimberB= 100 //mm
TimberH= 400 //mm
SteelB= 12 //mm
SteelH= 300 //mm
Bm= 50 //KNm
ratio= 12
//CALCULATIONS
It= 2*TimberB*TimberH^3/12
Is= ratio*SteelH^3/12
sigmat= -(Bm*10^6*TimberH/2)/(It+ratio*Is)
sigmas= -(Bm*10^6*SteelH/2)/(Is+It/ratio)
//RESULTS
printf ('Maximum stress in timber= %.1f mm^2 (+ or -)',sigmat)
printf (' \n Maximum stress in steel=%.1f N/mm^2 (+ or -)',sigmas)
