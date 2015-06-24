
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
path = get_absolute_file_path('solution5_16.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_16.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_16.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate Ka, Kb and Kc
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//From Fig.5.24
//Ka = 1
//Calculate Kf
Kf = 1 + (q*(Kt - 1))
//Calculate Kd
Kd = 1/Kf
//Calculate endurance limit stress Se (N/mm2)
Se = Ka * Kb * Kc * Kd * Sdash
//Plot S-N diagram
funcprot(0)
subplot(1,2,1)
[a, b, c, z] = SNplot(Sut,Se)
//Calculate fatigue strength for N cycles
Sfval = a + (((b - a)*(log10(N) - c))/(z - c))
Sf = 10^Sfval
//Caluclate Pm and Pa
Pm = (Pmax + Pmin)/2
Pa = (Pmax - Pmin)/2
theta = atand(Pa/Pm)
//Plot modified Goodman diagram 
x1 = {0 Sut}
y1 = {Sf 0}
subplot(1,2,2)
plot(x1,y1,'-*')
plot_format()
title('Modified Goodman diagram (Example 5.16)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Calculate permissible stress amplitude
Sm = 1/((tand(theta)/Sf) + (1/Sut))
Sa = Sm
//Calculate Pmax (N)
Pmax = (2 * Sa)*((%pi/4)*((d - (2*g))^2))
//Print results
printf('\nMaximum force on bar = %f N\n',Pmax)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
