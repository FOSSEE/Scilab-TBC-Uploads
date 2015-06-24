//example-10.9
//page no-330
//given
//ASTM number of grain
n=5
//as we know that
N=2^(n-1) //grains/inche^2 at magnification 100*
// as lineal and areal magnifications are related as *100=10,000 areal
N1=N/0.01/0.01  //grains/inch^2 at 1*
//average area of one grain
A=2.54*2.54/N1  //cm^2
//now N1 grains/ inch^2 of surface is = sqrt(160,000)=400 grain/inch of length and this is equal to =(400)^3=6.4*10^7  grains/m^3 of volume
//surface area of eaxh cubic surface
S=(1/400)^2  //inch^2
//there are 6 surfaces in a cubic grain
//so total surface area of each grain
TS=6*S  //inch^2
//each boundary is composed of two grain surfaces, therefore , total boundary in the volume is
TotS=1/2*TS*(400)^3  //inch^2 boundary per cubic of steel
//total suface area in cm^2
TotalS=TotS/(2.54)  //cm^2 boundary per cubic cm of steel
printf ("total boundary in the volume is %f cm^2 per cm^3 of steel",TotalS)
