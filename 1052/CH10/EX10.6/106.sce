clc;
//  Example 10.6
//page no 105 fig. 10.3
printf("\n Example 10.6 page no 105 fig. 10.3\n\n\n");
// since the density of air is effectively zero,the contribution of air to the 3 ft. manometer can be neglected
//the contribution due to the carbon tetrachloride can be found by using the hydrostatic equation
rho=62.3//density of water
SG=1.4///specific gravity of ccl4
h=3//height in manometer
P=rho*SG*h/144//factor 144 for psf to psi
printf(" \n pressure P=%f psi",P);
P_r=14.7//the right leg of manometer is open to atmosphere,atmospheric pressure at this point
//contribution to the prssure due to the height of water above pressure gauge
P_w=rho*h/144
printf("\n  pressure at right leg P_r=%f psia\n pressure due to water height P_w=%f psi",P_r,P_w);
P_a=P_r-P+P_w//absolute pressure
P_g=P_a-14.7//gauge pressure 
printf("\n absolute pressure P_a=%f psia\n gauge pressure P_g=%f psig",P_a,P_g);  
P_af=P_a*144
P_gf=round(P_g*144)
printf("\npressure in psfa P_af=%f psfa\n pressure in psfg P_gf=%f psfg",P_af,P_gf);
