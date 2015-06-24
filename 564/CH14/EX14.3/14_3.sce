pathname=get_absolute_file_path('14_3.sce')
filename=pathname+filesep()+'14_3data.sci'
exec(filename)
clear
L=n*W;
Cl1=(L/(0.5*S*rho*v^2));
l1=4.18*cos((alpha1-2)*%pi/180) +0.31*sin((alpha1-2)*%pi/180);
Cl2=(L/(0.5*S*rho*v^2))-((c/l1)*Cmcg1);
l2=4.18*cos((alpha2-2)*%pi/180) +0.31*sin((alpha2-2)*%pi/180);
Cl3=(L/(0.5*S*rho*v^2))-((c/l2)*Cmcg2);
//CD from Fig. 14.8(a)
CD=0.0875;
Lift=0.5*rho*v*v*S*(Cl1+Cl2+Cl3)/3;
Drag=0.5*rho*v*v*S*CD;
printf("\nLift: %f N",Lift);
printf("\nDrag: %f N",Drag);