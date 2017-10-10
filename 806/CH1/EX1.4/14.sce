clc
pathname=get_absolute_file_path('14.sce')
filename=pathname+filesep()+'14.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\14.txt')
disp("A liquid compressed in a cylinder has a volume of 1000 cm^3 at 1 MN/m^2 and volume of 995 cm^3 at 2MN/m^2.What is its bulk modulus of elasticity?")
disp("Solution:")
K=-(P2-P1)/(V2-V1)*V1//Modulus of elasticity
disp("MPa",K,"Modulus of elasticity=")
diary(0)
