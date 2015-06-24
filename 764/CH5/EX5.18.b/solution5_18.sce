
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
path = get_absolute_file_path('solution5_18.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_18.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_18.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate Sdash (N/mm2)
Sdash = (50/100)*Sut
//Calculate Ka, Kb and Kc
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//From Fig. 5.24
//Ka = 0.77
//Calculate Kf
Kf = 1 + (q*(Kt - 1))
//Calculate Kd
Kd = 1/Kf
//Calculate endurance limit stress Se (N/mm2
Se = Ka * Kb * Kc * Kd * Sdash
//Calculate maximum bending moment Mbmax (N-mm)
Mbmax = Pmax * dist
//Calculate minimum bending moment Mbmin (N-mm)
Mbmin = Pmin * dist
//Calculate Mbm and Mba (N-mm)
Mbm = (Mbmax + Mbmin)/2
Mba = (Mbmax - Mbmin)/2
theta = atand(Mba/Mbm)
//Plot Gerber curve
i = 1
for p = 0:10:Sut
    i = i + 1
    x(i) = p
    y(i) = Se * (1 - ((p/Sut)^2))
end
plot(x,y)
plot_format()
title('Gerber Curve (Example 5.18)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Calculate Sm (N/mm2)
//The coefficients of the resulting quadratic equation 
a = Se
b = ((Sut^2) * tand(theta))
c = (-1)*(Se * (Sut^2))
//Define polynomial
pol = [a b c]
r = roots(pol)
real_part = real(r)
if(real_part(1) > 0)
    Sm = real_part(1)
else
    Sm = real_part(2)
end
//Calculate Sa (N/mm2)
Sa = Sm * tand(theta)
//Calculate actual diameter of the beam (mm)
d = ((32 * Mba * fs)/(Sa * %pi))^(1/3)
//Print results
printf('\nDiameter of cantilever beam(d) = %f mm\n',d)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
