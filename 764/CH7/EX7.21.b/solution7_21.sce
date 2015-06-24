
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
path = get_absolute_file_path('solution7_21.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_21.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions7_21.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate Ka, Kb and Kc
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//Calculate Kd 
Kd = 1/Kf
//Calculate the corrected endurance limit stress Se (N/mm2)
Se = Kb * Kd * Sdash
//Plot modified Goodman diagram
//The common quadrilateral in the plot is the area of concern
y1 = {Se 0}
x1 = {0 Sut}
y2 = {Syt 0}
x2 = {0 Syt}
plot(x1,y1,'--*')
plot(x2,y2,'-*')
plot_format()
title('Modified Goodman diagram (Example 7.21)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Calculate the maximum and minimum force of fluid on cover P (N)
P1 = (%pi/4)*(D^2)*MAXP
P2 = (%pi/4)*(D^2)*MINP
//Calculate the initial pre-load on the bolts Pi (N)
Pi = 1.3 * P1
//Calculate the maximum and minimum forces in the bolt (N)
Pmax = Pi + ((kb/(kb + kc))*P1)
Pmin = Pi + ((kb/(kb + kc))*P2)
//Calculate the mean force and force amplitude
Pm = (Pmax + Pmin)/2
Pa = (Pmax - Pmin)/2
//Calculate the actual core cross-section area of the bolts Atotal (mm2)
Atotal = (Pa + (Pi/((1 + (Sut/Se)) * fs)))/(Sut/((1 + (Sut/Se))*fs))
//Calculate the cross-section area of each bolt A (mm2)
A = Atotal/N
//Choose proper diameter from Table 7.1
//Print results
printf('\nCore cross-section area of the bolt(A) = %f mm2\n',A)
