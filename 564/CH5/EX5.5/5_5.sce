pathname=get_absolute_file_path('5_5.sce')
filename=pathname+filesep()+'5_5data.sci'
exec(filename)
clear
L1=0.5*L*ones(7,1);
A1=[Ab;Ab;A;A;A;A;A];
R=(11*3^0.5 *P*A*Ab*L^2)/(48*(L*L*A*Ab + 4*I*(A+ 10*Ab)));
delF=[-cos(theta);-cos(theta);1;1;-1;-1;1];
F=R*delF;
disp(R,"R:");
disp("Force (AB,BC,CD,DE,BD,EB,AE):");
printf("\n %f N",F)
