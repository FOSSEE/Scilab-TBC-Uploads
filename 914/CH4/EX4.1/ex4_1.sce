clc;
warning('off');
printf("\n\n example4.1 - pg99");
// given
id=2.067;  //[in] - inside diameter
t=0.154;  //[in] - wall thickness
od=id+2*t;  //[in] - outer diameter
a=1.075;  //[in^2] - wall sectional area of metal
A=a*(1/144);  //[ft^2] - wall sectional area of metal in ft^2
deltaz=5/12;  //[ft] - length of transfer in z direction
T2=10+273.15;  //[K] - temperature at the top
T1=0+273.15;  //[K] - temperature at the bottom
q=-3.2;  //[Btu/hr] - heat transferred
deltaT=(T2-T1)+8;  //[degF]
k=-(q/A)/(deltaT/deltaz);
printf("\n\n korrect=%fBtu h^-1 ft^-1 degF^-1=17.17 W m^-1 K^-1",k);
Alm=(2*%pi*deltaz*((od-id)/(2*12)))/log(od/id);  //[ft^2] log mean area
disp(Alm)
kincorrect=k*(A/Alm);
printf("\n\n kincorrect=%fBtu h^-1 ft^-1 degF^-1=0.529 W m^-1 K^-1",kincorrect);
errorf=(k-kincorrect)/kincorrect;
disp(errorf,"error factor is-");





