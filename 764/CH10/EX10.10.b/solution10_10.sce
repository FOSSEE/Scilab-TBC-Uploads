//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution10_10.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_10.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions10_10.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate the initial spring force P1 (N)
P1 = k * delta1
//Calculate the final spring force P2 (N)
P2 = k * delta2
//Calculate the average force during compression P (N)
P = (P1 + P2)/2
//Calculate the exact spring stiffness kact (N/mm)
kact = (E*1000)/(P*(delta2 - delta1))
//Calculate the maximum spring force P2new (N)
P2new = delta2 * kact
//Calculate the permissible shear stress in the spring tau (N/mm2)
tau = (r/100)*Sut
//Calculate the Wahl factor K
K = (((4 * C) - 1)/((4 * C) - 4)) + (0.615/C)
//Calculate the wire diameter d (mm)
d = sqrt(K * ((8 * P2new * C)/(%pi * tau)))
dround = ceil(d)
//Calculate the mean coil diameter D (mm)
D = C * dround
//Calculate the number of active turns N
N = (G * (dround^4))/(8 * (D^3) * kact)
Nround = ceil(N)
//Calculate the total number of turns
Nt = active_coils(endtype, Nround)
//Calculate the solid length of the spring s (mm)
s = Nt * dround
//Calculate the maximum deflection of the spring deltamax (mm)
deltamax = (8 * P2new * (D^3) * Nround)/(G * (dround^4))
//Calculate the free length of the spring len (mm)
len = s + ((Nt - 1)*g) + deltamax
lround = round_five(len)
//Calculate the pitch of the coils p (mm)
p = lround/(Nt - 1)
//Print results
printf("\nWire diameter(d) = %f or %f mm\n",d,dround)
printf("\nMean coil diameter(D) = %f mm\n",D)
printf("\nNumber of active coils(N) = %f or %d\n",N, Nround)
printf("\nTotal number of coils(Nt) = %d\n",Nt)
printf("\nSolid length of the spring(s) = %f mm\n",s)
printf("\nFree length of the spring(len) = %f or %f mm\n",len,lround)
printf("\nPitch of the coil(p) = %f mm\n",p)
