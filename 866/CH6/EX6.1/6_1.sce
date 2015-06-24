clc
//initialisation of variables
F1= -60 //KN
F2= -100 //KN
r= 6 //m
alpha1= 30 //degrees
alpha2= 45 //degrees
//CALCULATIONS
Rav= (-F1*(r*cosd(alpha1)+r)-F2*(r*sind(alpha1)+r) )/(2*r)
Rbv= -F1-F2-Rav
Rbh= Rbv
Rah= Rbh
Nx= -Rav*cosd(alpha2)-Rah*cosd(alpha2)-F1*cosd(alpha2)
Sx= -Rav*sind(alpha2)+Rah*cosd(alpha2)-F1*sind(alpha2)
Mx= Rav*(r-r*cosd(alpha2))-Rah*r*sind(alpha2)+F1*(r*cosd(alpha1)-r*cosd(alpha2))
//RESULTS
printf ('Normal force= %.1f KN',Nx)
printf ('\n  Shear force=%.1f KN',Sx)
printf (' \n Bending moment=%.1f KNm',Mx)
