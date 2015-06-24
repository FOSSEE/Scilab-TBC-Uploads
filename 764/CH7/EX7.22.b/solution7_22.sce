
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
path = get_absolute_file_path('solution7_22.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_22.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the value of Kd
Kd = 1/Kf
//Calculate the endurance limit stress for bolt Se (N/mm2)
Se = Kd * Sdash
//Case1: Rotating force acting downward
//Calculate the force P1d (N)
P1d = ((w * 9.81 * (dist/2) * 1000) + (((W * 9.81) + F)*(dist * 1000)))/((l1 + ((l2^2)/l1)))
//Case2: Rotating force acting upward
//Calculate the force P1u (N)
P1u = ((w * 9.81 * (dist/2) * 1000) + (((W * 9.81) - F)*(dist * 1000)))/((l1 + ((l2^2)/l1)))
//Plot modified Goodman diagram
//The common quadrilateral in the plot is the area of concern
y1 = {Se 0}
x1 = {0 Sut}
y2 = {Syt 0}
x2 = {0 Syt}
plot(x1,y1,'--*')
plot(x2,y2,'-*')
plot_format()
title('Modified Goodman diagram (Example 7.22)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Calculate the maximum and minimum forces on the bolt (N)
if (P1d > P1u) then
    Pmax = (Pi * 1000) + ((kb/(kb + kc))*P1d)
    Pmin = (Pi * 1000) + ((kb/(kb + kc))*P1u)
else
    Pmin = (Pi * 1000) + ((kb/(kb + kc))*P1d)
    Pmax = (Pi * 1000) + ((kb/(kb + kc))*P1u)
end
//Calculate the mean force and force amplitude (N)
Pm = (Pmax + Pmin)/2
Pa = (Pmax - Pmin)/2
theta = atand(Pa/Pm)
//Calculate the actual core cross-section area of the bolt A (mm2)
A = (Pa + ((Pi*1000)/(((1/tand(theta)) + (Sut/Se)) * fs)))/(Sut/(((1/tand(theta)) + (Sut/Se))*fs))
//Choose proper diameter from Table 7.1
//Check for static design 
//Calculate maximum tensile stress sigmat (N/mm2)
sigmat = Pmax/A
//Calculate the factor of safety fsNew
fsNew = Syt/sigmat
//Print results
printf('\nCore cross-section area of the bolt(A) = %f mm2\n',A)
if (fsNew > fs) then
    printf('\nDesign is safe\n')
else
    printf('\nDesign is not safe\n')
end
