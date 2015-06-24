
function[] = plot_format()
    //Get the handle of current axes
    g = gca()
    //Give labels and set label properties
    g.labels_font_color=5
    g.font_size=3
    g.grid=[1,1]
    g.box="off"
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution7_20.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_20.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions7_20.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate the endurance limit stress for bolt Sdash (N/mm2)
Sdash = (50/100)*Sut
//Calculate Ka, Kb and Kc
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//Calculate Kd 
Kd = 1/Kf
//Calculate the corrected endurance limit stress Se (N/mm2)
Se = Kb * Kc * Kd * Sdash
//Plot modified Goodman diagram
//The common quadrilateral in the plot is the area of concern
y1 = {Se 0}
x1 = {0 Sut}
y2 = {Syt 0}
x2 = {0 Syt}
plot(x1,y1,'--*')
plot(x2,y2,'-*')
plot_format()
title('Modified Goodman diagram (Example 7.20)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Calculate the angular velocity w (rad/s)
w = (2 * %pi * n)/60
//Calculate the crank radius r (m)
r = (0.5 * l)/1000
//Calculate the ratio of length of connecting rod to crank radius n1
n1 = (c/(r * 1000))
//Calculate the inertia force on bolt at normal running condition I (N)
I = m * r * (w^2) * (cosd(theta) + (cosd(2 * theta)/n1))
//Calculate the engine speed at overspeed condition nmax (rpm)
nmax = n + ((load/100)*n)
//Calculate the inertia force on bolt at overspeed Imax (N)
Imax = m * r * (((2 * %pi * nmax)/60)^2) * (cosd(theta) + (cosd(2 * theta)/n1))
//Calculate the force acting on each bolt under normal running condition P (N)
P = I/N
//Calculate the force acting on each bolt under overspeed condition PbMax (N)
PbMax = Imax/N
//Calculate the initial pre-load on the bolts Pi (N)
Pi = PbMax/((kb + kc)/kc)
//Calculate the maximum force in the bolt PMAX (N)
PMAX = Pi + ((kb/(kb + kc))* P)
//Calculate the minimum force in the bolt PMIN (N)
PMIN = Pi
//Calculate the mean force and force amplitude
Pm = (PMAX + PMIN)/2
Pa = (PMAX - PMIN)/2
//Calculate the actual core cross-section area of the bolt A (mm2)
A = (Pa + (Pi/((1 + (Sut/Se)) * fs)))/(Sut/((1 + (Sut/Se))*fs))
//Choose proper diameter from Table 7.1
//Print results
printf('\nCore cross-section area of the bolt(A) = %f mm2\n',A)
