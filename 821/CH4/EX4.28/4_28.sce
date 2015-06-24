d=13.56;//density of mercury in gr per cm^3//
V=1/d;//Volume of mercury in cm^3//
D=0.07*10^-4;//Diameter of the globule in cm//
r=D/2;//radius of globule in cm//
printf('One globule of mercury occpies a volume of 1.33*3.14*r^3cm^3\nSurface area of one globule=4*3.14*r^2');
Vg=1.33*3.14*r^3;//volume of one globule in cm^3//
y=0.0738/Vg;//No of globules in 0.0738 volume//
printf('\nNo. of globules in 0.0738cm^3=y=%f',y);
SA=y*4*3.14*r^2;//Surface area of y globules in cm^2//
printf('\nSurface area of y globules=SA=%fcm^2',SA);
