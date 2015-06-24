clc
pathname=get_absolute_file_path('5_2_1.sce')
filename=pathname+filesep()+'521.sci'
exec(filename)
n=weight/MN2 //mol
V=n*R*T*14.7/P //lt
printf("assuming ideal gas behaviour, volume=%f litres",V)
Vcap=V/n
if(Vcap>5)
    disp("ideal gas equation yields error less than 1 % for diatomic gas")
else
    disp("ideal gas equation yields error greater than 1 % for diatomic gases")
end
