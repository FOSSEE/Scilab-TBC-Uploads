
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_23.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_23.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
printf("\nCode is applicable only when thickness of the plate is greater than 8mm.\n") 
//Calculate the thickness of the plate t (mm)
t = ((Pi * Di * 1000)/(2 * sigmat * (eta/100))) + CA
tround = ceil(t)
//Calculate the diameter of the rivets d (mm)
if (t > 8) then
    d = 6 * sqrt(t)
    dround = ceil(d)
else
    printf('\nThickess of the plate is not greater than 8mm. Hence terminating the programme.\n')
    exit()
end
//Calculate the number of rivets N
n = (((Di*1000)/dround)^2)*(Pi/tau)
//Calculate the pitch of the rivets p1 (mm)
p1 = dround/(1 - (eta1/100))
//Calculate the minimum required pitch pmin (mm)
pmin = 2 * dround
//Calculate the maximum required pitch pmax (mm)
pmax = (C * tround) + 41.28
if (p1 > pmax | p1 < pmin)
    p1 = 55 //Assumed
end
//Calculate the number of rivets in one row n1
n1 = (%pi * ((Di * 1000) + t))/p1
n1 = ceil(n1)
//Calculate the revised diameter of the rivet drevise (mm)
drevise = sqrt((((Di * 1000)^2)*Pi)/(n1 * tau))
dceil = ceil(drevise)
//Calculate the margin m (mm)
m = 1.5 * dceil
mround = round_five(m)
//Calculate the overlap of plates a (mm)
a = pt + (2 * mround)
//Print results
printf('\nThickness of the plate(tround) = %f mm\n', tround)
printf('\nDiameter of the rivets(dceil) = %f mm\n', dceil)
printf('\nNumber of rivets(n1) = %d mm\n', n1)
printf('\nPitch of the rivets(p1) = %d mm\n', p1)
printf('\nNumber of rows of rivets(assumed) = 1\n')
printf('\nOverlap of plates(a) = %f mm\n', a)
