Vf=117.857*10^-9;//Volume falling within field of view in ml//
AN=9.66;//Average no. of particles per count//
N=AN/Vf;//No. of particles per count//
printf('No .of particles per ml=N=%f',N);
W=1.5*10^-7;//Weight of iron oxide per ml//
w=W/N;//weight of one particle in grams//
printf('\nWeight of one particle=w=1.83*10^-15grams');
d=5.2;//density of iron oxide in g per cm^3//
V=w/d;//Volume of one particle in cm^3//
printf('\nVolume of one particle=V=3.52*10^-16cm^3');
R=2.032*10^-5;//radius of particle in cm//
printf('Radius of particle=R=2.032*10^-5cm\nDiameter of particle=4.064*10^-5cm');
