
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
path = get_absolute_file_path('solution5_20.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_20.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate mean bending moment Mbm (N-m)
Mbm = (Mtmax + Mtmin)/2
//Calculate bending moment amplitude Mba (N-m)
Mba = (Mtmax - Mtmin)/2
//Calculate mean torsional moment Mtm (N-m)
Mtm = (Tmax + Tmin)/2
//Calculate torsional moment amplitude Mta (N-m)
Mta = (Tmax - Tmin)/2
//Assume diameter of the shaft to be 1mm d
d = 1
//Calculate mean and amplitude bending stresses bM, bA (N/mm2)
bM = (32 * Mbm * 1000)/(%pi * (d^3))
bA = (32 * Mba * 1000)/(%pi * (d^3))
//Calculate mean and amplitude shear stresses tauM, tauA (N/mm2)
tauM = (16 * Mtm * 1000)/(%pi * (d^3))
tauA = (16 * Mta * 1000)/(%pi * (d^3))
//Calculate resultant mean and amplitude stresses sigmaM, sigmaA (N/mm2)
sigmaM = sqrt((bM^2) + (3 * (tauM^2)))
sigmaA = sqrt((bA^2) + (3 * (tauA^2)))
theta = atand(sigmaA/sigmaM)
//Plot modified Goodman diagram
//The common quadrilateral in the plot is the area of concern
x1 = {0 Syt}
y1 = {Syt 0}
x2 = {0 Sut}
y2 = {Se 0}
plot(x1,y1,'-*')
plot(x2,y2,'--*')
plot_format()
title('Modified Goodman diagram (Example 5.20)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Calculate permissible stress amplitude Sa (N/mm2)
Sm = 1/((tand(theta)/Se) + (1/Sut))
Sa = Sm * tand(theta)
//Calculate actual shaft diameter d (mm)
d = ((fs * sigmaA)/Sa)^(1/3)
//Print results
printf('\nShaft diamater(d) = %f mm\n',d)
