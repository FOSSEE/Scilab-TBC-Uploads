//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution10_9.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_9.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions10_9.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate the initial force in the spring P1 (N)
P1 = (%pi/4)*(dia^2)*(Pb)
//Calculate the deflection of the spring when the valve is open delta2 (mm)
delta2 = delta1 + l
//Calculate the force in the spring when the valve is open P2 (N)
P2 = (delta2/delta1)*P1
//Determine the maximum force in the spring P (N)
if (P2 > P1) then
    P = P2
else
    P = P1
end
//Calculate the permissible shear stress in the spring tau (N/mm2)
tau = (r/100)*Sut
//Calculate the Wahl Factor K 
K = (((4 * C) - 1)/((4 * C) - 4)) + (0.615/C)
//Calculate the wire diameter d (mm)
d = sqrt(K * ((8 * P * C)/(%pi * tau)))
dround = ceil(d)
//Calculate the mean coil diameter D (mm)
D = C * dround
//Calculate the number of active turns N
N = (delta1 * G * (dround^4))/(8 * P1 * (D^3))
Nround = ceil(N)
//Calculate the total number of turns
Nt = active_coils(endtype, Nround)
//Calculate the solid length of the spring s (mm)
s = Nt * dround
//Calculate the maximum deflection of the spring deltamax (mm)
deltamax = (8 * P * (D^3) * Nround)/(G * (dround^4))
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
