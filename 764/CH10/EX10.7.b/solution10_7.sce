
//Obtain path of solution file
path = get_absolute_file_path('solution10_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_7.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions10_7.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate the force acting on each spring Pi (N)
Pi = P/n
//Calculate the permissible shear stress for the spring tau (N/mm2)
tau = (30/100)*Sut
//Calculate the Wahl factor K
K = (((4 * C) - 1)/((4 * C) - 4)) + (0.615/C)
//Calculate the wire diameter d (mm)
d = sqrt((K * 8 * Pi * C)/(%pi * tau))
dround = ceil(d)
//Calculate the mean coil diameter D (mm)
D = C * dround
//Calculate the number of active coils N
N = (delta * G * (dround^4))/(8 * Pi * (D^3))
Nceil = ceil(N)
//Calculate the total number of coils Nt
Nt = active_coils(endtype, Nceil)
//Calculate the true deflection delta (mm)
deltaN = (8 * Pi * (D^3) * Nceil)/(G * (dround^4))
//Calculate the total gap between the adjacent coils gt (mm)
gt = (Nt - 1)*g
//Calculate the solid length of the spring s (mm)
s = Nt * dround
//Calculate the free length of the spring len (mm)
len = s + gt + deltaN
//Calculate the pitch of the coils p (mm)
p = ceil(len)/(Nt - 1)
//Calculate the required spring rate k (N/mm)
k = Pi/delta
//Calculate the actual spring rate kact (N/mm)
kact = (G * (dround^4))/(8 * (D^3) * Nceil)
printf("\nWire diameter(d) = %f or %f mm\n",d,dround)
printf("\nMean coil diameter(D) = %f mm\n",D)
printf("\nNumber of active coils(N) = %f or %d\n",N, Nceil)
printf("\nTotal number of coils(Nt) = %d\n",Nt)
printf("\nFree length of the spring(len) = %f or %f mm\n",len,ceil(len))
printf("\nPitch of the coil(p) = %f mm\n",p)
printf("\nRequired spring rate(k) = %f N/mm\n",k)
printf("\nActual spring rate(kact) = %f N/mm\n",kact)