clc
pathname=get_absolute_file_path('12.sce')
filename=pathname+filesep()+'12.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\12.txt')
disp("A lubricated shaft rotates inside a concentric sleeve bearing at 1200rpm,the clearance is smaal with respect to the radius and hence a linear distribution velocity distribution may be assumed.What are the power requirements to rotate the shaft?R=2cm , L=6cm , dy=0.1mm , and u=0.2N.s/m^2.")
disp("Solution:")
t=u*du/dy*2*%pi/60*R*1000/100//shear stress in N/m^2
T=t*2*%pi*R*L*R/1000000//torque in Nm
P=T*du*2*%pi/60//Power in Watts
disp("W",P,"Power required to rotate the shaft =")
diary(0)