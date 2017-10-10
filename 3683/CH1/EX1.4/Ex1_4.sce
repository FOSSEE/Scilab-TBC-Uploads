b=250//width, in mm
d=500//effective depth, in mm
sigma_cbc=5//in MPa
sigma_st=140//in MPa
m=18.66//modular ratio
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
z=d-Xc/3//lever arm, in mm
Mr=b*Xc*sigma_cbc*z/2//in N-mm
mprintf("Moment of resistance of the beam = %f kN-m",Mr/10^6)
