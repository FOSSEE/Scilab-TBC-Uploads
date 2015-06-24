
//Obtain path of solution file
path = get_absolute_file_path('solution8_11.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_11.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the x-coordinate of the C.G. of the three welds, origin being at G3 on weld3, xbar (mm)
xbar = ((w * (l/2)) + (w * ((-1 * l)/2)) + (l * 0))/(w + w + l)
//Calculate the y-cordinate of the C.G. of the three welds, origin being at G3 on weld3, ybar (mm)
ybar = ((w * (w/2)) + (w * (w/2)) + (l * 0))/(w + w + l)
//Assume the throat of the welds to be 1mm t
t = 1
//Calculate the areas of the three welds (mm2)
A1 = w * t
A2 = w * t
A3 = l * t
//Calculate the total area of the welds A (mm2)
A = A1 + A2 + A3
//Calculate the primary shear stress in the weld tau1 (N/mm2)
tau1 = (P * 1000)/A
//Calculate the distance of the farthest point from the C.G. r (mm)
//Angles in degree
r = sqrt(((w - ybar)^2) + ((l/2)^2))
theta = atand((w - ybar)/(l/2))
//Calculate the inclination of the of the secondary shear stress with the horizontal fi (degree)
fi = 90 - theta
//Calculate force eccentricity e (mm)
e = 100 + (l/2)
//Maximum bending moment acting on the welds M (N/mm)
M = (P * 1000) * e
//Distance between the C.Gs of the three welds from the overall C.G (mm)
r1 = sqrt((((w/2) - ybar)^2) + ((l/2)^2))
r2 = sqrt((((w/2) - ybar)^2) + ((l/2)^2))
r3 = ybar
//Calculate the polar moments of inertia of the three welds (mm4)
J1 = A1*(((w^2)/12) + (r1^2))
J2 = A2*(((w^2)/12) + (r2^2))
J3 = A3*(((l^2)/12) + (r3^2))
//Calculate the secondary shear stress tau2 (N/mm2)
tau2 = (M * r)/(J1 + J2 + J3)
//Total vertical component of the resultant shear stress vert (N/mm2)
vert = tau1 + (tau2 * sind(fi))
//Total horizontal component of the resultant shear stress hori (N/mm2)
hori = tau2 * cosd(fi)
//Calculate the resultant shear stress res (N/mm2)
res = sqrt((vert^2) + (hori^2))
//Calculate the actual throat of the weld t (mm)
t = res/tau
//Calculate the thickness of the weld h (mm)
h = t/0.707
hround = ceil(h)
//Print results
printf('\nThroat of the weld(t) = %f mm\n',t)
printf('\nLeg of the weld(h) = %f or %f mm\n',h,hround)
