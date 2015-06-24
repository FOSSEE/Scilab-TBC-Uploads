clc
d = 55 // diameter in mm
ul = 0.035 // upper limit in mm
ll = 0.000 // lower limit in mm
Dmax = d+ul // maximum diameter of hole in mm
Dmin = d+ll // minimum diameter of hole in mm
IT = 0.035 // hole tolerence in mm
dmax = Dmax-0.15*IT // maximum diameter of reamer in mm
dmin = dmax-0.35*IT // minimum diameter of reamer in mm
l = ((d/4)+(d/3))/2 // length of guiding section in mm
Z = 1.5*sqrt(d)+2 // number of teeth
Z = ceil(Z)
printf("\n 1 Diameter of reamer \n Maximum diameter of reamer = %0.3f mm \n Minimum diameter of reamer = %0.3f mm \n 2 Back taper = 0.05 mm \n 3 Values of various angles \n Rake angle = 5 degree \n Plan approach angle = 45 degree \n Circular land = 0.25 to 0.50 mm \n Secondary clearance angle = 10 degree \n 4 Length of reamer \n Length of fluted portion = 82.5 mm \n Length of reaming allowance = 0.18 mm \n Length of cutting section = 2.25 mm \n Length of guiding section = %d mm \n 5 Number of teeth = %d" , dmax,dmin,l,Z) 
// Answer vary due to round off error
