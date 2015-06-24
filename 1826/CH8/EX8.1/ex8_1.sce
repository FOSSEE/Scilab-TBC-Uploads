// Example 8.1, page no-208
clear
clc
d_cu=8.96*10^3//density of cu
a_cu=63.55//Atomic weight of cu
d_z=7100
a_z=65.38
d_al=2700
a_al=27
avg=6.023*10^26
h=6.626*10^-34
m=9.1*10^-31//kg
e=1.6*10^-19//C

//(i)
n_cu=d_cu*avg/a_cu
e_cu=(h^2/(8*m))*(3*n_cu/%pi)^(2/3)
e_cu=e_cu/e
printf("\n(i)For Cu\nThe electron concentration in Cu is %.4f*10^28 per m^3\nFermi energy at 0 k =%.4f eV ",n_cu*10^-28,e_cu)

//(ii)
n_z=d_z*avg*2/a_z
e_z=(h^2/(8*m))*(3*n_z/%pi)^(2/3)
e_z=e_z/e
printf("\n(i)For Zn\nThe electron concentration in Zn is %.4f*10^28 per m^3\nFermi energy at 0 k =%.4f eV ",n_z*10^-28,e_z)

//(i)
n_al=d_al*avg*3/a_al
e_al=(h^2/(8*m))*(3*n_al/%pi)^(2/3)
e_al=e_al/e
printf("\n(i)For Al\nThe electron concentration in Al is %.4f*10^28 per m^3\nFermi energy at 0 k =%.4f eV ",n_al*10^-28,e_al)
