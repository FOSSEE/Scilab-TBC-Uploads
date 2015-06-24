
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_19.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_19.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the diameter of the rivets which are subjected to double shear ds (mm)
ds = sqrt((P * 1000 * 4)/(2 * %pi * tau * n))
dsround = round_five(ds)
//Calculate the plate thickness t (mm)
t = (P * 1000)/((w - (n1 * dsround))*sigmat)
tround = round_five(t)
//Calculate the pitch of the rivets p (mm)
p = w/n2
//Calculate the dimensions of the seam (mm)
m = 1.5 * dsround
mround = round_five(m)
pt = 0.6 * p
ptround = round_five(pt)
//Calculate the shear strength of the plate Ps (N)
Ps = 2 * (%pi/4) * (dsround^2) * tau * n
//Calculate the tensile strength of the plate Pt (N)
Pt = (w - (n1 * dsround)) * tround * sigmat
//Calculate the compressive strength of the plate Pc (N)
Pc = dsround * tround * sigmac * n
//Obtain the lowest strength value from these PLow (N)
if ((Ps < Pt) & (Ps < Pc)) then
    PLow = Ps
elseif ((Pt < Ps) & (Pt < Pc))
    PLow = Pt
else
    PLow = Pc
end
//Calculate the strength of the solid plate PSolid (N)
PSolid = w * tround * sigmat
//Calculate the efficiency of the joint eta (%)
eta = (PLow/PSolid)*100
//Print results
printf('\nDiameter of the rivets(ds) = %f or %f mm\n',ds,dsround)
printf('\nThickness of the rivets(t) = %f or %f mm\n',t,tround)
printf('\nPitch of the seam(p) = %f mm\n',p)
printf('\nTransverse pitch of the seam(pt) = %f mm\n',pt)
printf('\nMargin of the seam(m) = %f or %f mm\n',m,mround)
printf('\nEfficiency of the joint(eta) = %f percent\n',eta)
