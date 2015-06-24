
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
path = get_absolute_file_path('solution7_23.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_23.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the value of Kd
Kd = 1/Kf
//Calculate the endurance limit stress for bolt Se (N/mm2)
Se = Kd * Sdash
//Plot modified Goodman diagram
//The common quadrilateral in the plot is the area of concern
y1 = {Se 0}
x1 = {0 Sut}
y2 = {Syt 0}
x2 = {0 Syt}
plot(x1,y1,'--*')
plot(x2,y2,'-*')
plot_format()
title('Modified Goodman diagram (Example 7.23)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Calculate the initial pre-load in the bolts Pitotal (N)
Pitotal = PSeat*((%pi/4)*((Do^2) - (Di^2)))
//Calculate the pre-load per bolt Pi (N)
Pi = Pitotal/N
//Calculate the total external load Fmax per bolt(N)
Fmax = ((%pi/4)*((Di + ((Do - Di)/2))^2)*Pmax)/N
//Calculate the total external load Fmin per bolt(N)
Fmin = ((%pi/4)*((Di + ((Do - Di)/2))^2)*Pmin)/N
//Calculate the maximum and minimum forces on the bolt (N)
PMAX = Pi + ((kb/(kb + kc)) * Fmax)
PMIN = Pi + ((kb/(kb + kc)) * Fmin)
//Calculate the mean force and force amplitude (N)
Pm = (PMAX + PMIN)/2
Pa = (PMAX - PMIN)/2
//Calculate the actual core cross-section area of the bolt A (mm2)
A = (Pa + (Pi/((1 + (Sut/Se)) * fs)))/(Sut/((1 + (Sut/Se))*fs))
//Choose proper diameter from Table 7.1
//Print results
printf('\nCore cross-section area of the bolt(A) = %f mm2\n',A)
