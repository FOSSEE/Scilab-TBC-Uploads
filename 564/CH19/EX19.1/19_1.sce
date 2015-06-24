pathname=get_absolute_file_path('19_1.sce')
filename=pathname+filesep()+'19_1data.sci'
exec(filename)
clear
Yc=(2*L45^2 +L12^2)/(4*L12 +4*L45);
Ixx=((2*L12 +L45)*t*Yc^2) +(L45*t*(L45-Yc)^2)+ (2*t/3)*((2*Yc^3) -((Yc-L45)^3) -((Yc-L12)^3));
P=-Sy/Ixx;
function[q1]=q12(s1),
    q1=P*t*(Yc-L12)*s1 +P*t*0.5*s1^2;
endfunction
s1=linspace(0,L12,10*L12);
q1=feval(s1,q12);
subplot(2,3,1)
plot2d(s1,q1)
xgrid(3);
xtitle( 'Shear flow in 1-2 and 8-7', ' -s1- ', '-q-');
function[q2]=q23(s2),
    q2= P*t*Yc*s2+q12(L12);
endfunction
s2=linspace(0,L12,10*L12);
q2=feval(s2,q23);
subplot(2,3,2)
plot2d(s2,q2)
xgrid(3);
xtitle( 'Shear flow in 2-3 and 7-6', ' -s2- ', '-q-');
function[q3]=q03(s3),
    q3=P*t*Yc*s3;
endfunction
s3=linspace(0,L45/2,5*L45);
q3=feval(s3,q03);
subplot(2,3,3)
plot2d(s3,q3)
xgrid(3);
xtitle( 'Shear flow in 0-3 and 0-6', ' -s3- ', '-q-');
function[q4]=q34(s4),
    q4=(P*t*Yc*s4 -0.5*P*t*s4^2)+q03(L45/2)+q23(L12);
endfunction
s4=linspace(0,L45,10*L45);
q4=feval(s4,q34);
subplot(2,3,4)
plot2d(s4,q4)
xgrid(3);
xtitle( 'Shear flow in 3-4 and 6-5', ' -s4- ', '-q-');
function[q5]=q94(s5),
    q5=P*t*(Yc-L45)*s5;
endfunction
s5=linspace(0,L45/2,5*L45);
q5=feval(s5,q94);
subplot(2,3,5)
plot2d(s5,q5)
xgrid(3);
xtitle( 'Shear flow in 9-4 and 9-5', ' -s5- ', '-q-');
datatipToggle();
printf("\nclick on the point on the plot to view its coordinates");