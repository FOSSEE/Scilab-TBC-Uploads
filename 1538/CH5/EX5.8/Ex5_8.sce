//example-5.8
//page no-159
//given
//ASTM no of grains
ASTM=5
//area density of grains
N=2^(ASTM-1)  //grains/inch^2 at magnification of 100*
//as we know that lineal and areal magnification are related as
//*100 lineal=*10000 areal
//therefore
Nnew=N/0.01/0.01  //grains/inch^2 at 1*
//average area of one grain
A=1/Nnew*(2.54)^2  //cm^2
//now 160000 grains/inch^2 of surface is sqrt(160000)=400 grains/inch of length and this is equal to=(400)^3==6.4*10^7 grains/m^3 of volume
//surface area of each cubic surface
S=(1/400)^2  //inch^2
//there are 6 surfaces in accubic grain
//thus total surface area of each grain
T=1/2*6*S*(400)^3/2.54  //cm^2 boundary per cubic cm of steel
printf ("the boumdary area per cubic centimeter of steel is %f cm^2 boundary per cubic centimeter of steel",T)
