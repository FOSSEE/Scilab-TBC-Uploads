
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_18.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_18.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the diamater of the rivet from shear consideration ds (mm)
ds = sqrt((P * 1000 * 4)/(%pi * n * tau))
dsround = ceil(ds)
//Calculate the diameter of the rivet from crushing consideration dc (mm)
dc = sqrt((P * 1000)/(n * t * sigmac))
dcround = ceil(dc)
//Choose appropriate diameter value d (mm)
if (ds > dc) then
    d = ds
    dround = ceil(d)
else
    d = dc
    dround = ceil(d)
end
//Calculate the width of the band from tensile consideration w (mm)
w = ((n/2) * dround) + ((P * 1000)/(t * sigmat))
wround = round_five(w)
//Calculate the margin m (mm)
m = 1.5 * dround
mround = round_five(m)
//Calculate the pitch of the rivets p (mm)
p = wround - (2 * mround)
//Calculate the transverse pitch pt (mm)
pt = p
//Print results
printf('\nDiameter of the rivet(d) = %f or %f mm\n',d,ceil(d))
printf('\nWidth of the band(w) = %f or %f mm\n',w,wround)
printf('\nTransverse pitch of the rivets(pt) = %f mm\n',pt)
