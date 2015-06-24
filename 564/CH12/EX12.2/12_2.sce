pathname=get_absolute_file_path('12_2.sce')
filename=pathname+filesep()+'12_2data.sci'
exec(filename)
clear
Pe=Load*CL;
V=Load/6;
r=(DC^2 +AD^2)^0.5;
sumr=4*r^2 +2*DC^2;//sum(r^2)
S=(Pe/sumr)*r//shear on rivets A and B
printf("\nshear force on A & B (S): %f N",S);
thetaA=3*%pi/4;
thetaB= %pi/4;
RA=(S^2 + V^2 +2*S*V*cos(thetaA))^0.5;//resultent force on A
RB=(S^2 + V^2 +2*S*V*cos(thetaB))^0.5;//resultent force on B
printf("\nresultent force on A: %f N",RA);
printf("\nresultent force on B: %f N",RB);