pathname=get_absolute_file_path('14_1.sce')
filename=pathname+filesep()+'14_1data.sci'
exec(filename)
T=((W/g)*a)/cos(10*%pi/180);
printf("\nT: %f N",T);
R=W+T*sin(10*%pi/180);
Ls=(R/2)/cos(20*%pi/180);//Load in each strut
printf("\nLoad in each strut: %f N",Ls);
Li=(Wa/g)*a;//inertial load at CG of fuselage aft of AA
N=T-Li*cos(10*%pi/180)+Wa*sin(10*%pi/180);
S=Li*sin(10*%pi/180)+Wa*cos(10*%pi/180);
s=v0^2/(2*a);
printf("\nN: %f N",N);
printf("\nS: %f N",S);
printf("\ns: %f m",s);