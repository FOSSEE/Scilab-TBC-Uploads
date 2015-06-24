
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
path = get_absolute_file_path('solution5_14.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_14.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_14.sci'
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
//Ka = 0.82
//Calculate endurance limit stress for vessel Se (N/mm2)
Se = Ka * Kb * Kc * Sdash
//Assume thickness of plate to be 1mm t
t = 1
//Calculate sigmaMax and sigmaMin (N/mm2)
sigmaMax = (Pmax * Di)/(4 * t)
sigmaMin = (Pmin * Di)/(4 * t)
//Calculate sigmaA and sigmaM (N/mm2)
sigmaM = (sigmaMax + sigmaMin)/2
sigmaA = (sigmaMax - sigmaMin)/2 
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
title('Modified Goodman diagram (Example 5.14)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Calculate Sm (N/mm2)
Sm = 1/((tand(theta)/Se) + (1/Sut))
//Calculate Sa (N/mm2)
Sa = Sm * tand(theta)
//Calculate the actual value of t (mm)
t = (sigmaA * fs)/Sa
//Print results
printf('\nThickness of plate(t) = %f mm\n',t)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')

