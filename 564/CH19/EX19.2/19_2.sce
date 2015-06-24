pathname=get_absolute_file_path('19_2.sce')
filename=pathname+filesep()+'19_2data.sci'
exec(filename)
GJcl=((4*A*A*G*t12)/(L12+L34));
GJo=((L34+L13)*G*t^3)/3
GJ=GJcl+GJo;
Dtheta=T/GJ;
qcl=GJcl*Dtheta/(2*A);
tmaxcl=qcl/t12;
tmaxo=G*t13*Dtheta;
printf("\nτmax,cl: %f N/mm^2",tmaxcl);
printf("\nτmax,op: %f N/mm^2",tmaxo);