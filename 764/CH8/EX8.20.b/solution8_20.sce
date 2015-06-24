
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_20.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_20.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the diameter of the rivets d (mm)
d = 6 * sqrt(t)
dround = ceil(d)
//Calculate the shear resistance of one rivet in double shear Ps (N)
Ps = 1.875 * ((%pi/4) * (dround^2) * tau)
//Calculate the crushing resistance of one rivet Pc (N)
Pc = dround * t * sigmac
//Choose appropriate criterion P (N)
if (Ps < Pc) then
    P = Ps
else
    P = Pc
end
//Calculate the tensile strength of the plate in the outer row Pt (N)
Pt = (w - dround)* t* sigmat
//Calculate the number of rivets required n
n = Pt/P
n = ceil(n)
//Calculate the margin m (mm)
m = 1.5 * dround
mround = round_five(m)
//Calculate the transverse pitch pt (mm)
pt = 2 * dround
ptround = round_five(pt)
//Calculate the strap thickness t1 (mm)
t1 = 0.625 * t
//Calculate the pitch p (mm)
p = (w - (2 * mround))/2
//Calculate the strength of the joint along:
//Section A-A
SA = (w - dround) * t * sigmat
//Section B-B
SB = ((w - (2 * dround)) * t * sigmat) + Ps
//Section C-C
SC = ((w - (3 * dround)) * t * sigmat) + (3 * Ps)
//Calculate the shear resistance of all the rivets SS (N)
SS = n * Ps
//Choose lowest of all the calculated strengths PLow (N)
if ((SA < SB) & (SA < SC) & (SA < SS)) then
    PLow = SA
elseif ((SB < SA) & (SB < SC) & (SB < SS))
    PLow = SB
elseif ((SC < SA) & (SC < SB) & (SC < SS))
    Plow = SC
else
    PLow = SS
end
//Calculate the strength of the plate PSolid (N)
PSolid = w * t * sigmat
//Calculate the efficiency of the joint eta (%)
eta = (PLow/PSolid) * 100
//Print results
printf('\nDiameter of the rivet(d) = %f or %f mm\n',d,dround)
printf('\nNumber of rivets required(n) = %f\n',n)
printf('\nMargin(m) = %f or %f mm\n',m,mround)
printf('\nTransverse pitch(pt) = %f or %f mm\n',pt,ptround)
printf('\nThickness of strap(t1) = %f mm\n',t1)
printf('\nPitch(p) = %f mm\n',p)
printf('\nEfficiency of the joints(eta) = %f percent\n',eta)
