clc
pathname=get_absolute_file_path('71.sce')
filename=pathname+filesep()+'71.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\71.txt')
disp("A smooth flat plate 3 m wide and 30 m long is towed through still water at 20 degree celsius with a speed of 6m/s.Determine the drag on one side of the plate and the drag on the first 3 m of plate")
disp("Solution:")
R=U*l/v//Reynolds number
Cd=0.455/(log10(R))^2.58//Constant
D1=Cd*w*l*p*(U^2)/2//Drag force on whole plate
D2=Cd*w*l1*p*U^2/2//Drag force on first 3 m
disp("N",D1,"Drag force on whole plate")
disp("N",D2,"Drag force on first 3m")

diary(0)
