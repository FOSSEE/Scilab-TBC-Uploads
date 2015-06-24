

clc
// Given that
a=0.839*10^-9 //a is edge length in m
b_m=9.27*10^-24 //  Bohr Magneton in ampere*m^2
n_b=8*4    //8 is no. of Fe++ ions per unit cell and 4 is Bohr magnetons per Fe++ ion
printf("Example 18.2\n")
M=n_b*b_m/a^3  //M is Saturation magnetisation
printf("\n Saturation Magnetization is %.1e Ampere/m\n",M)


