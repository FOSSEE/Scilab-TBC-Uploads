pathname=get_absolute_file_path('24_1.sce')
filename=pathname+filesep()+'24_1data.sci'
exec(filename)
clear
P=[GH -GH;DK KH],X=[L1*sin(theta);L1*cos(theta)];
q=inv(P)*X;
q(3)=L1*cos(theta)/(DK+KH);
q(4)=(L1*cos(theta)+L2)/(DK+KH);
PA=GH*q(1) +FG*q(3) +EF*q(4);
PE=-GH*q(2) -FG*q(3) -EF*q(4);
X1=[GH*q(1)+FG*q(3)+EF*q(4);GH*q(1)+FG*q(3);GH*q(1);0];
X2=[-GH*q(2)-FG*q(3)-EF*q(4);-GH*q(2)-FG*q(3);-GH*q(2);0];
Y=[0;EF;EF+FG;EF+FG+GH];
subplot(2,1,1)
plot2d(Y,X1)
xgrid(3)
xtitle('Load distribution in ABCD','y','Load')
subplot(2,1,2)
plot2d(Y,X2)
xgrid(3)
xtitle('Load distribution in EFGH','y','Load')
datatipToggle();
printf("\nq1: %f N/mm",q(1));
printf("\nq2: %f N/mm",q(2));
printf("\nq3: %f N/mm",q(3));
printf("\nq4: %f N/mm",q(4));
printf("\nPA: %f N",PA);
printf("\nPE: %f N",PE);
printf("\nclick on the point to view its coordinate on the plot");