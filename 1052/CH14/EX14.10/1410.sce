clc;
//Example 14.10
//page no 163
printf("Example 14.10 page no 163\n\n");
//a fluid is moving in the turbulent flw through a pipe 
// a hot wire anemometer is inserted to measure the local velocity at a given point P in the system 
//following readings were recorded at equal time interval
//instantaneous velocities at subsequent time interval
vz=[43.4,42.1,42,40.8,38.5,37,37.5,38,39,41.7]
vz_bar=0;
n=10;
i = 0;
sums=0;
for i = 1:10 
    sums=sums+vz(i);
end
vz_bar=sums/n;
printf("\n vz_bar=%f",vz_bar);
sigma=0;
for i=1:10
    sigma=sigma+(vz(i)-vz_bar)^2;
    vz_sqr=sigma/10;
end
printf("\n vz_sqr=%f",vz_sqr)
I = sqrt(vz_sqr)/vz_bar//intensity of turbulance
printf("\n intensity of turbulance I=%f ",I);
