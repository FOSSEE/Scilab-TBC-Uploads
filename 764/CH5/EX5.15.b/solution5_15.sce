
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
path = get_absolute_file_path('solution5_15.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_15.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_15.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate Sdash (N/mm2)
Sdash = (50/100)*Sut
[Ka Kb Kc] = fluctuate(op, d, reliability)
//From Fig.5.24
//Ka = 0.72
//Calculate endurance limit Se (N/mm2)
Se = Ka * Kb * Kc * Sdash
//Calculate Mbmax and Mbmin bending moments (N-mm)
Mbmax = Pmax * dist
Mbmin = Pmin * dist
//Calculate Mba and Mbm (N-mm)
Mbm = (Mbmax + Mbmin)/2
Mba = (Mbmax - Mbmin)/2
//Calculate sigmaM and sigmaA (N/mm2)
sigmaM = (32 * Mbm)/(%pi * (d^3))
sigmaA = (32 * Mba)/(%pi * (d^3))
//Plot modified Goodman diagram and check value of X
x1 = {0 Sut}
y1 = {Se 0}
x2 = sigmaM
y2 = sigmaA
subplot(2,2,1)
plot(x1,y1,'-*')
plot_format()
title('Modified Goodman diagram (Example 5.15)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
subplot(2,2,2)
plot(x1,y1,'-*')
plot(x2,y2,'-X')
plot_format()
title('X falls outside the region of safety')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
//Draw line through (Sut,0) and X and calculate Sf
i = 1
for p = 0:20:Sut
    y(i) = ((p - Sut)*((sigmaA)/(sigmaM - Sut)))
    x(i) = p
    i = i + 1
end
subplot(2,2,3)
plot(x1,y1,'-*')
plot(x2,y2,'-X')
plot(x,y,'--')
plot_format()
title('Draw line passing through X and (Sut,0)')
xlabel('sigmaM (N/mm2)')
ylabel('sigmaA (N/mm2)')
Sf = max(y)
//Plot S-N diagram
funcprot(0)
subplot(2,2,4)
[a, b, c, z] = SNplot(Sut,Se)
//Calculate fatigue life of cantilever spring
Nval = c + (((z - c)*(log10(Sf) - a))/(b - a))
N = 10^Nval
//Print results
printf('\nFatigue life of cantilever spring(N) = %f cycles\n',N)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
