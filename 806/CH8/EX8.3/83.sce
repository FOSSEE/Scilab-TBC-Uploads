clc
pathname=get_absolute_file_path('83.sce')
filename=pathname+filesep()+'83.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\83.txt')
disp("A source with strength 0.2m^3/s and a vortex with strength 1 m^2/s are located at the origin.Determine the equations for velocity potential and stream function.What are the velocity components at x=1 m,y=0.5 m?")
disp("Solution:")
r=sqrt(x^2+y^2)
Vr=1/(10*%pi*r)
Vt=1/(2*%pi*r)
disp("m/s",Vr,"Vr=")
disp("m/s",Vt,"Vt=")
diary(0)
