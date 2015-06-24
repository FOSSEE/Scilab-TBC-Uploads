pathname=get_absolute_file_path('7_05.sce')
filename=pathname+filesep()+'7_05data.sci'
exec(filename)
disp("->as slope (DCmg) of moment coefficient curve is negative the airplane model is statically stable.")
disp("->as equilibrium angle of attack (Ae) falls in a reasonable range, the plane is longitudinally stable.")