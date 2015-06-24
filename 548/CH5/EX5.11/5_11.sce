pathname=get_absolute_file_path('5_11.sce')
filename=pathname+filesep()+'5_11_data.sci'
exec(filename)
L=q*c*Cl;disp(L,"L=","L=q*c*Cl","lift per unit span for mach 3 :")
Dw=q*c*Cd;disp(Dw,"Dw=","Dw=q*c*Cd","Wave drag per unit span for mach 3 :")
L1=q1*c*Cl1;disp(L1,"L1=","L1=q1*c*Cl1","lift per unit span for mach 2:")
Dw1=q1*c*Cd1;disp(Dw1,"Dw1=","Dw1=q1*c*Cd1","Wave drag per unit span for mach 2 :")

