
//Obtain path of solution file
path = get_absolute_file_path('solution10_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_4.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions10_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])

//Calculate the permissible shear stress for the spring tau (N/mm2)
tau = (30/100)*Sut
//Calculate the factor ((d^3)/(Di + d)) fac
fac = (K * 8 * Pmax)/(%pi * tau)
//Calculate array of values ((d^3)/(Di + d))
for i = 1:1:length(dia)
    fact(1, i) = ((dia(1, i)^3)/(Di + dia(1, i)))
end
for i = 1:1:length(dia)-1
    if(fac < fact(1, i) & fac > fact(1, (i+1)))
        d = dia(1, i)
    end
end
//Calculate the mean coil diameter D (mm)
D = Di + d
//Calculate the spring index C
C = D/d
//Calculate the correct Wahl factor Knew
Knew = (((4 * C) - 1)/((4 * C) - 4)) + (0.615/C)
//Calculate the shear stress tauNew (N/mm2)
tauNew = Knew*((8 * Pmax * D)/(%pi * (d^3)))
if (tauNew < tau) then
    printf ("Design is safe")
else
    printf("Design is unsafe.Further results are erroneous")
end
//Calculate the number of active coils N
N = ((lmin - lmax)*(G * (d^4)))/(8 * (Pmax - Pmin) * (D^3))
Nceil = ceil(N)
//Calculate the total number of coils Nt
Nt = active_coils(endtype, Nceil)
//Calculate the true deflection delta (mm)
delta = (8 * Pmax * (D^3) * Nceil)/(G * (d^4))
//Calculate the total gap between the adjacent coils g (mm)
g = (15/100)*delta
//Calculate the solid length of the spring s (mm)
s = Nt * d
//Calculate the free length of the spring len (mm)
len = s + g + delta
//Calculate the pitch of the coils p (mm)
p = ceil(len)/(Nt - 1)
//Print results
printf("\nWire diameter(d) = %f mm\n",d)
printf("\nMean coil diameter(D) = %f mm\n",D)
printf("\nNumber of active coils(N) = %f or %d\n",N, Nceil)
printf("\nTotal number of coils(Nt) = %d\n",Nt)
printf("\nFree length of the spring(len) = %f or %f mm\n",len,ceil(len))
printf("\nPitch of the coil(p) = %f mm\n",p)
