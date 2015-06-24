clc
D = 100 // diameter in mm
cs = 30 // side cutting edge angle in degree
lemda = 90 - cs // approach angle in degree
d = 2.5 // depth of cut in mm
f = 0.125 // feed in mm/rev.
N = 300 // turning speed of job in rev./min.
mu = 0.6 // coefficient of friction
tau = 400 // ultimate shear stress in Mpa
bita = atand(mu) // friction angle in radian
alphas = 10 // side rake angle
alphab = 6 // back rake angle
alpha = atand(tand(alphas)*sind(lemda)+tand(alphab)*cosd(lemda)) // orthogonal rake angle in degree
phi = 45 - ( bita - alpha) // shear angle
Fc = tau*d*f/(secd(bita-alpha)*cosd(phi+bita-alpha)*sind(phi)) // cutting force in N
Ft = Fc*tand(bita-alpha) // thrust component in N
Ff = Ft*sind(lemda) // feed force along axis of job in N
Rf = Ft*cosd(lemda) // radial force normal to axis of job in N
v = %pi*D*N/(1000*60) // velocity in m/s
p = Fc*v // power in watts
printf("\n Cutting force = %d N\n Thrust force = %0.3f N\n Feed force = %0.1f N\n Radial force = %0.3f N\n Cutting power = %d watts" , Fc,Ft,Ff,Rf,p)
// 'Answers vary due to round off error'
