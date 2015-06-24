
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_9.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_9.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Assume the throat of each weld to be 1mm t
t = 1
//Calculate the total throat area of the welds A (mm2)
A = N * l * t
//Calculate the primary shear stress tau1 (N/mm2)
tau1 = (P * 1000)/A
//Maximum bending moment acting on the welds M (N/mm)
M = (P * 1000) * e
//Distance of the farthest point in the weld from the C.G. of the plate r (mm)
r = sqrt(((w/2)^2) + ((l/2)^2))
//Polar moment of inertia of weld1 about plate C.G. using parallel axis theorem J1 (mm4)
J1 = (A/N)*(((l^2)/12) + ((w/2)^2))
//Calculate the polar moment of inertia due to symmetry J (mm4)
J = 2 * J1
//Calculate the secondary shear stress tau2 (N/mm2)
tau2 = (M * r)/J
//Angle made by the secondary shear force with the horizontal theta (degree)
theta = 45
//Total vertical component of the resultant shear stress vert (N/mm2)
vert = tau1 + (tau2 * sind(theta))
//Total horizontal component of the resultant shear stress hori (N/mm2)
hori = tau2 * cosd(theta)
//Calculate the resultant shear stress res (N/mm2)
res = sqrt((vert^2) + (hori^2))
//Calculate the actual throat of the weld t (mm)
t = res/tau
tround = round_five(t)
//Print results
printf('\nThroat of the weld(t) = %f or %f mm\n',t,tround)
