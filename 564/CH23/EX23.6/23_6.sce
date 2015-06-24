pathname=get_absolute_file_path('23_6.sce')
filename=pathname+filesep()+'23_6data.sci'
exec(filename)
clear
A=L1*B1;
q1=T/(2*A);
S=T/B1;
q1=S/L1;
P=S*(L/2)/L1;
X=[L -L;A A];
X1=[P;T];
q=[q1;inv(X)*X1];
X2=[0;L*q(2)-L*q(3);-L*q(2)+L*q(3);0];
Y=[0;1500;3000;4500];
plot(Y,X2);
xgrid(3);
xtitle('Distribution of load in the top flange of the front spar',' ','Load')
datatipToggle();
printf("\nq1: %f N/mm",q(1))
printf("\nq2: %f N/mm",q(2))
printf("\nq3: %f N/mm",q(3))