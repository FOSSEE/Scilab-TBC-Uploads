clc
clear
//Initalization of variables
hv=14000 //Btu/lb
ef=0.4
tmin=80 //F
tmid=300 //F
m=13 //lb
c=0.27
tmean=2300 //F
//calculations
heat=ef*hv
Qavail=heat*(tmean-tmin)/(tmean+460)
Q=m*c*(tmean-tmid)
Q2=Q- (tmin+460)*m*c*log((tmean+460)/(tmid+460))
tot=Qavail+Q2
//results
printf("Total available energy = %d Btu/lb of fuel",tot)
disp("The answer is a bit different due to rounding off error in textbook")
