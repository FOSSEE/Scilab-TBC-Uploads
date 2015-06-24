
//Function to standardise the given bolt-size
function[v] = standard(w)
    v = ceil(w)
    rem = pmodulo(v,10)
    if (rem ~= 0) then
    v = v + (10 - rem)
    end
endfunction


//Obtain path of solution file
path = get_absolute_file_path('solution7_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_3.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible shear stress tau (N/mm2)
tau = ((50/100)*Syt)/fs
//Calculate the distance between bolt1 and C.G. of all bolts res (mm)
res = (((dist1/2)^2) + ((dist2/2)^2))^(1/2)
//Calculate the primary shear force at bolt1 Pshear (N)
Pshear = (P * 1000)/N
//Calculate the secondary shear force at bolt1 Sshear (N)
Sshear = (P * 1000 * e)/(N * res)
//Calculate angle theta (degree)
theta = atand(dist2/dist1)
//Calculate the resultant force on bolt1 P1 (N)
P1 = (((Sshear * cosd(theta) - Pshear)^2) + ((Sshear * sind(theta))^2))^(1/2)
//Calculate the resultant force on bolt2 P2 (N)
P2 = (((Sshear * cosd(theta) + Pshear)^2) + ((Sshear * sind(theta))^2))^(1/2)
//Obtain the bolt subjected to maximum shear force Pmax (N)
if (P1 > P2) then
    Pmax = P1
else
    Pmax = P2
end
//Calculate the core diameter of the bolt dc (mm)
dc = ((4 * Pmax)/(tau * %pi))^(1/2)
//Calculate the nominal diameter of the bolt d (mm)
d = dc/0.8
//Standardise the bolt size
d = standard(d)
//Print results
printf('\nStandard size of the bolts is M%d\n',d)
