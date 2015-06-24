
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
path = get_absolute_file_path('solution5_13.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_13.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_13.sci'
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
//Ka = 0.79
//Calculate endurance limit Se (N/mm2)
Se = Ka * Kb * Kc * Sdash
//Calculate shear endurance limit Sse (N/mm2)
Sse = 0.577 * Se
//Calculate yield strength in shear Ssy (N/mm2)
Ssy = 0.577 * Syt
//Calculate Mtm and Mta (N-m)
Mtm = (Mtmax + Mtmin)/2
Mta = (Mtmax - Mtmin)/2
theta = atand(Mta/Mtm)
//Plot modified Goodman diagram
//The common quadrilateral in the plot is the area of concern
x1 = {0 Ssy}
y1 = {Sse Sse}
y2 = {Ssy 0}
plot(x1,y1,'--*')
plot(x1,y2,'-*')
plot_format()
title('Modified Goodman diagram (Example 5.13)')
xlabel('tauM (N/mm2)')
ylabel('tauA (N/mm2)')
//Calculate permissible shear stress amplitude Ssa (N/mm2)
Ssa = Sse
//Calculate the actual shaft diameter d (mm)
d = ((16 * Mta * 1000 * fs)/(Ssa * %pi))^(1/3)
//Print results
printf('\nThe diameter of the shaft(d) = %f mm\n',d)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
