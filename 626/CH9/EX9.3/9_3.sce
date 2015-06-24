clear;
clc;
close;
disp("Example 9.3")
C1=411
alfa2=60
C2=800
W2=450
alfa3=13
C3=411
Cz2=C2*cosd(60)
Cz3=C3*cosd(13)
Ct2m=Cz3*tand(60)
Wt2m=(450^2-400^2)^(1/2)
Um=Ct2m-Wt2m
Ct3=C3*sind(13)
Rm=1-(Ct2m+Ct3)/(2*Um)
disp(Cz2,"(a)The axial velocities up- and downstream of the rotor in m/s:")
disp(Cz3)
disp(Um,"(b)The rotor velocity Um in m/s:")
disp(Rm,"(c)The degree of reaction at this radius :")