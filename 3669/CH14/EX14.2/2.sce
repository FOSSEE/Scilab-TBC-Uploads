
//Variable declaration
lamda=5460*10**-10;    //wavelength(m)
d=1*10**-4;     //seperation(m)
D=2;     //distance(m)
n=10;    //position

//Calculation
Xmax10=n*lamda*D/d;
tan_phi=Xmax10/D;     
phi_max10=atan(tan_phi);
phi_max10=phi_max10*180/%pi;     //angular position of 10th maximum(degrees)
phim=60*(phi_max10-int(phi_max10));
phis=60*(phim-int(phim));
xmin1=lamda*D/(2*d);       
tan_phi1=xmin1/D;
phi_min1=atan(tan_phi1);
phi_min1=phi_min1*180/%pi;     //angular position of 1st minimum(degrees)
phi_m=60*(phi_min1-int(phi_min1));
phi_s=60*(phi_m-int(phi_m));

//Result
printf('angular position of 10th maximum is %0.3f  degrees %0.3f  minutes %0.3f  seconds \n',int(phi_max10),int(phim),(phis))
printf('answer varies due to approximating off errors\n')
printf('angular position of 1st minimum is %0.3f  degrees %0.3f  minutes %0.3f seconds \n',int(phi_min1),int(phi_m),int(phi_s))