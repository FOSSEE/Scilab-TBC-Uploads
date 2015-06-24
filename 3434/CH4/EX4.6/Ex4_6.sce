// given data
clc
phi=28.58 // in degree
n=135 // may 15
dlta=23.45*sind((360*(284+n)/365.0))

w=(13.5-12)*15 // in degrees
A=3981.6 // in W/m^2 from table 4.2
B=0.177// from table 4.2
C=0.130 // from table 4.2

costhetaz=cosd(phi)*cosd(dlta)*cosd(w)+sind(dlta)*sind(phi)

Ibn=A*exp(-B/0.922)// kJ/m^2-h


Id=C*Ibn // kJ/m^2-h

printf("The diffused radiation is %.2f kJ/m^2-h",Id)
Ib=Ibn*0.922 // in kJ/m^2-h

printf("\n The beam radiation is %.2f kJ/m^2-h",Ib)
Ig=Ib+Id // in kJ/m^2-h

printf("\n The global radiation is %.2f kJ/m^2-h",Ig)
