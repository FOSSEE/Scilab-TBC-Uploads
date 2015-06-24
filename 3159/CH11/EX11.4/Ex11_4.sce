//  Find the yield stress for a grain size of ASTM 9
clc
sigma1 = 120 // initial yield strength of material in MNm^-2
sigma2 = 220 // Final yield strength of material in MN m^-2
d1 = 0.04 // initial diameter in mm
d2 = 0.01 // final diameter in mm
n = 9 // astm number
printf("Example 11.4")
k = (sigma2-sigma1)*1e6/(1/sqrt(d2*1e-3)-1/sqrt(d1*1e-3))
sigma_i = sigma1*1e6 -k/sqrt((d1*1e-3))
d = 1/sqrt(2^(n-1)*1e4/645)
sigma_y = sigma_i+k*(d*1e-3)^(-0.5)

printf("\n Yield stress for a grain size of ASTM 9 is %d MN m^-2",ceil(sigma_y/1e6))

