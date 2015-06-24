clc
clear 
printf("example 3.9 page number 97\n\n")

//to find the vapor content of dimethylanaline
po_D = 4.93   //in kPa
po_W = 96.3   //in kPa
n = 0.75   //vaporization efficiency

P = n*po_D+po_W;
printf("P = %f kPa",P)

x_water = 96.3/100;
x_dimethylanaline = 1-x_water;
wt_dimethylanaline = (x_dimethylanaline*121)/(x_dimethylanaline*121+x_water*18);
printf("\n\nweight of dimethylanaline in water = %f",wt_dimethylanaline*100)

//part 1
n = 0.8;
po_D = 32   //in kPa
actual_vp = n*po_D;
p_water = 100 - actual_vp;
steam_required = (p_water*18)/(actual_vp*121);
printf("\n\namount of steam required = %f kg steam/kg dimethylanaline",steam_required)

//part 2
x_water = p_water/100;
wt_water = x_water*18/(x_water*18+(1-x_water)*121);
printf("\n\nweight of water vapor = %f \nweight of dimethylanaline =%f",wt_water*100,100*(1-wt_water))
