clc
pathname=get_absolute_file_path('7_6_1.sce')
filename=pathname+filesep()+'761.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
deltaH=m3*H3-m1*H1-m2*H2
disp("From tables, Vdot=0.1166 m^3/kg")
Vdot=0.1166 
A=%pi*(ID/2)^2 /10^4
u=m3*Vdot/(A*60)
Ek=m3*u^2 /(2*10^3)
Qdot=deltaH+Ek
printf("Heat required=%E Kj/min",Qdot)