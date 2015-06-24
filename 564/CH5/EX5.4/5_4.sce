pathname=get_absolute_file_path('5_4.sce')
filename=pathname+filesep()+'5_4data.sci'
exec(filename)
clear
AC=(AB^2 +BC^2)^0.5;
delBC=BC*delT*alpha;
F1=[AB/BC;1;AB/BC;1;-AC/BC;-AC/BC];
L=[AB;BC;AB;BC;AC;AC];
for i=1:6
    X(i)=L(i)*F1(i)*F1(i);
end
R=(-delBC*A*E)/sum(X);
F=R*F1;
disp("Force (AB,BC,CD,DA,AC,DB):");
printf("\n %f N",F);