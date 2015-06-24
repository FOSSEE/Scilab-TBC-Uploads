
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
path = get_absolute_file_path('solution5_19.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_19.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate mean and amplitude stresses in X-direction Xm, Xa (N/mm2)
Xm = (Xmax + Xmin)/2
Xa = (Xmax - Xmin)/2
//Calculate mean and amplitude stresses in Y-direction Ym, Ya (N/mm2)
Ym = (Ymax + Ymin)/2
Ya = (Ymax - Ymin)/2
//Calculate resultant mean stress sigmaM (N/mm2)
sigmaM = sqrt((Xm^2) - (Xm * Ym) + (Ym^2))
//Calculate resultant amplitude stress sigmaA (N/mm2)
sigmaA = sqrt((Xa^2) - (Xa * Ya) + (Ya^2))
theta = atand(sigmaA/sigmaM)
//Plot modified Goodman Diagram
x1 = {0, Sut}
x2 = {Se, 0}
plot(x1,x2,'-*')
plot_format()
title('Modified Goodman diagram (Example 5.19)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Calculate permissible stresses Sm and Sa (N/mm2)
Sm = 1/((tand(theta)/Se) + (1/Sut))
Sa = Sm * tand(theta)
//Calculate factor of safety fs
fs = Sa/sigmaA
//Print results
printf('\nFactor of safety(fs) = %f\n',fs)
