
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_22.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_22.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate plate thickness t (mm)
t = ((Pi * Di * 1000)/(2 * sigmat * (eta/100))) + CA
tround = ceil(t)
//Calculate the diameter of the rivets d (mm)
d = 6 * sqrt(tround)
dround = ceil(d)
//Calculate the pitch of the rivets p (mm)
p = (((n1 + (1.875 * n2))* %pi * (dround^2) * tau)/(4 * tround * sigmat)) + dround
pround = round_five(p)
//Calculate pmin (mm)
pmin = 2 * dround
//Calculate pmax (mm)
pmax = (C * tround) + 41.28
//Assign appropriate value to pitch (mm)
if (p > pmax) then
    pitch = pmax
else
    pitch = pround
end
//Calculate the distance between inner and outer rows p1 (mm)
p1 = (0.2 * pitch) + (1.15 * dround)
p1round = round_five(p1)
//Calculate the margin m (mm)
m = 1.5 * dround
mround = round_five(m)
//Calculate the thickness of the of straps t1 (mm)
t1 = (0.625 * tround)*((pitch - dround)/(pitch - (2 * dround)))
t1round = ceil(t1)
//Calculate the tensile strength of the plate per inch length in the outer row Pt (N)
Pt = (pitch - dround) * tround * sigmat
//Calculate the shear strength of rivets per pitch length Ps (N)
Ps = (n1 + (n2 * 1.875))*((%pi/4) * (dround^2) *tau)
//Calculate the tensile strength of the solid plate per pitch length P (N)
P = pitch * tround * sigmat
//Obtain the lowest strength value from these PLow (N)
if (Ps < Pt) then
    PLow = Ps
else
    PLow = Pt
end
//Calculate the efficiency of the joint etaCalc (%)
etaCalc = (PLow/P) * 100
//Print results
printf('\nThickness of the plate(t) = %f or %f mm\n',t,tround)
printf('\nDiameter of the plate(d) = %f or %f mm\n',d,dround)
printf('\nPitch of rivets(p) = %f mm\n',pitch)
printf('\nDistance between inner and outer rows of rivets(p1) = %f or %f mm\n',p1,p1round)
printf('\nMargin(m) = %f or %f mm\n',m,mround)
printf('\nThickness of straps(t1) = %f or %f mm\n',t1,t1round)
printf('\nEfficiency of the joint(etaCalc) = %f percent\n',etaCalc)
