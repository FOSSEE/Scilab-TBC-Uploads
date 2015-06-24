clc
clear 
printf("example 3.27 page number 114\n\n")

//to find the area of heating surface
F = 1000   //in kg
xF = 0.01   

solid_feed = F*xF;
water_feed = F - solid_feed;

tF = 40  //in degree C
hF = 167.5   //in kJ/kg
xL = 0.02;

solid_liquor = 10  //in kg
L = solid_liquor/xL;
tL = 100  //in degree C
hL = 418.6   //in kJ/kg

V = F -L;

tv = 100  //in degree C
Hv = 2675   //in kJ/kg
ts = 108.4  //in degree C
Hs = 2690  //in kJ/kg
tc = 108.4  //in degree C
hc = 454   //in kJ/kg

//applying heat balance
S = (F*hF-V*Hv-L*hL)/(hc-Hs);
printf("weight of steam required = %f kg/hr",S)

Q = S*(Hs-hc);
U = 1.4   //in kW/m2K
delta_t = ts-tL;
A = 383.2/(U*delta_t);
printf("\n\narea of heating surface = %f square meter",A)
