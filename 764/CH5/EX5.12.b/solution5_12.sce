
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
path = get_absolute_file_path('solution5_12.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_12.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_12.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate Sdash (N/mm2)
Sdash = (50/100)*Sut
//Calculate Ka, Kb and Kc
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//From Fig.5.24
//Ka = 0.77
//Calculate Kf
Kf = 1 + (q*(Kt - 1))
//Calculate Kd
Kd = (1/Kf)
//Calculate Se (N/mm2)
Se = Ka * Kb * Kc * Kd * Sdash
//Plot modified Goodman diagram
//The common quadrilateral in the plot is the area of concern
y1 = {Se 0}
x1 = {0 Sut}
y2 = {Syt 0}
x2 = {0 Syt}
plot(x1,y1,'--*')
plot(x2,y2,'-*')
plot_format()
title('Modified Goodman diagram (Example 5.12)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Maximum bending moment at the fillet cross-section Mbmax (N-mm)
Mbmax = Pmax * dist
//Minimum bending moment at the fillet cross-section Mbmin (N-mm)
Mbmin = Pmin * dist
//Calculate Mba and Mbm (N-mm)
Mbm = (Mbmax + Mbmin)/2
Mba = (Mbmax - Mbmin)/2
theta = atand(Mba/Mbm)
//Calculate Sm (N/mm2)
Sm = 1/((tand(theta)/Se) + (1/Sut))
//Calculate Sa (N/mm2)
Sa = Sm * tand(theta)
//Calculate the actual diameter of the beam d (mm)
d = ((32 * Mba * fs)/(%pi * Sa))^(1/3)
//Print results
printf('Diameter of beam(d) = %f mm\n',d)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
