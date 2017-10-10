clc
pathname=get_absolute_file_path('11.sce')
filename=pathname+filesep()+'11.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\11.txt')
disp("a liquid has a viscosity of 0.005kg/m.s and density of 850kg/cm^3,calculate the kinematic viscosity in (a)SI units (b)USC units and (c)viscosity in USC units")
disp("Solution:")
v=u/p//kinematic viscosity
V=v*(1/.3048)^2//kinematic viscosity in USC units
U=u/47.9//viscosity in USC units
disp("m^2/s",v,"Kinematic viscosity in SI units=")
disp("ft^2/s",V,"Kinematic viscosity in USC units=")
disp("slug/ft.s",U,"viscosity in USC units")
diary(0)