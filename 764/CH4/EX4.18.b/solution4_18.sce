
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_18.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_18.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate permissible stresses
//Permissible tensile stress sigmat (N/mm2)
sigmat = Syt/fs
//Calculate the yield strength in shear Ssy (N/mm2)
Ssy = (50/100)*Syt
//Calculate the permissible stress in shear tau (N/mm2)
tau = Ssy/fs
//Maximum force required to shear the bar Ps (N)
Ps = (%pi/4)*(D^2)*Sus
//Calculate the force acting on each pin P1 (N)
P1 = (Ps * l2)/l4
//Calculate reaction at pinA RA (N)
RA = Ps - P1
//Calculate the force applied at lever P (N)
P = (P1 * l2)/l3
//Calculate reaction at pinD RD (N)
RD = P1 - P
//Calculate the diameter of pins d1 (mm)
d1 = (P1/(p * r1))^(1/2)
d1 = round_five(d1)
//Calculate the length of pin l1 (mm)
l1 = r1 * d1
l1 = round_five(l1)
//Calculate the shear stress in pin tau1 (N/mm2)
tau1 = (P1 * 4)/(2 * %pi * (d1^2))
//Calculate the diameter of the link d (mm)
d = ((P1 * 4)/(%pi * sigmat))^(1/2)
d = round_five(d)
//Calculate the maximum bending moment on lever Mb (N-mm)
Mb = P * (l3 - l2)
//Assume the thickness of the cross-section to be 1mm b
b = 1
//Calculate the width of the cross-section h (mm)
h = r2 * b
//Calculate the value of y (mm)
y = h/2
//Calculate the second moment of area I (mm4)
I = (b * ((r2 * b)^3))/12
//Calculate the true value of b (mm)
b = ((Mb * y)/(sigmat * I))^(1/3)
b = round_five(b)
//Calculate the true value of h (mm)
h = r2 * b
//Calculate the inner diameter of the boss di (mm)
di = d1 + (2 * t)
//Calculate the outer diameter of the boss d0 (mm)
d0 = 2 * di
//Calculate the second moment of area I1 (mm4)
I1 = ((l1 * (d0^3)) - (l1 * (di^3)))/12
//Calculate y1 (mm)
y1 = d0/2
//Calculate the bending stress B (N/mm2)
B = (Mb * y1)/I1
//Print results
printf('\nDiameter of pins(d1) = %f mm\n',d1)
printf('\nLength of pins(l1) = %f mm\n',l1)
printf('\nDiameter of link(d) = %f mm\n',d)
printf('\nWidth of lever cross-section(h) = %f mm\n',h)
printf('\nThickness of lever cross-section(b) = %f mm\n',b)
//Chech design
if((tau1 < tau) & (B - sigmat)<2)
    printf('\nThe design is safe\n')
end