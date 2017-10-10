clc
pathname=get_absolute_file_path('13.sce')
filename=pathname+filesep()+'13.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\13.txt')
disp("a gas with molecular weight of 44 is at a pressure of 0.9MPa and a temperature of 20 degree celsius.Calculate its density")
R=8312/M//gas constant(in m.N/kg.K)
p=P/R/(273+T)*10^6//density in kg/m^3
disp("kg/m^3",p,"Density p=")
diary(0)