//Initilization of variables
F=1000 //N
lAB=0.5 //m
lDC=0.25 //m //length of the perpendicular drawn from point C to AB
//Calculations
lAC=sqrt((0.3)^2+(0.25)^2) //m
lBC=sqrt((0.20)^2+(0.25)^2) //m
Sac=(lAC*F)/(lAB) //N //by law of concurrent forces
Sbc=(lBC*F)/(lAB) //N //by law of concurrent forces
//Results
clc
printf('The axial force in the bar AC(by aw of concurrent forces) is %f N \n',Sac)
printf('The axial force in the bar BC(by aw of concurrent forces) is %f N \n',Sbc)
