pathname=get_absolute_file_path('17_1.sce')
filename=pathname+filesep()+'17_1data.sci'
exec(filename)
Ixx=(t*h^3)/3,Iyy=(t*h^3)/12,Ixy=(t*h^3)/8;
A=0.5*(Sy/(Ixx*Iyy -Ixy^2));
function[q1]=q12(s1),
    q1=A*(((h*t*(Iyy-Ixy))*s1)+(Ixy*t*s1^2));
endfunction
s1=linspace(0,h/2,5*h);
q1=feval(s1,q12);
subplot(3,1,1)
plot2d(s1,q1);
xgrid(3);
xtitle( 'Direct stress in lower flange', ' -s1- ', '-σz-');
function[q2]=q23(s2),
    q2=(A*((Iyy*t*h*s2)-(Iyy*t*s2^2)))+q12(h/2);
endfunction
s2=linspace(0,h,10*h);
q2=feval(s2,q23);
subplot(3,1,2)
plot2d(s2,q2);
xgrid(3);
xtitle( 'Direct stress in the web', ' -s2- ', '-σz-');
function[q3]=q34(s3),
    q3=(A*((Ixy*t*s3*s3)-(Iyy*t*h*s3)))+q23(h);
endfunction
s3=linspace(0,h/2,5*h);
q3=feval(s3,q34);
subplot(3,1,3)
plot2d(s3,q3);
xgrid(3);
xtitle( 'Direct stress in upper flange', ' -s3- ', '-σz-');
datatipToggle();
printf("\nclick on the point to view its coordinate on the plot")