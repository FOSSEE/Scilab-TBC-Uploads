pathname=get_absolute_file_path('5_3.sce')
filename=pathname+filesep()+'5_3data.sci'
exec(filename)
clear
L1=[L*tan(theta);L;L*tan(theta);L;L];
A=[AC;A;AC;A;A];
F1=[Load*cos(theta);Load*sin(theta);0;0;0];
F2=[-sin(theta);cos(theta);-sin(theta);1;cos(theta)];
for i=1:5
    X(i)=L1(i)/A(i);
    X1(i)=F1(i)*F2(i)*X(i);
    X2(i)=F2(i)*F2(i)*X(i);
end
R=-sum(X1)/sum(X2);
F=F1+ R*F2;
disp("Force (AC,CB,BD,CD,AD):");
printf("\n %f N",F);