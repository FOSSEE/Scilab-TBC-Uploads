pathname=get_absolute_file_path('25_5.sce')
filename=pathname+filesep()+'25_5data.sci'
exec(filename)
clear
Ixx=(2*Ez1*a*tb*(b/2)^2) +(Ez2*ta*b^3)/12;
Iyy=(Ez1*tb*(2*a)^3)/12;
Ixy= Ez1*a*tb*a*(b/2) +Ez1*a*tb*(-a)*(-b/2);
P1=(-Mx*Ixy)/(Ixx*Iyy-Ixy*Ixy);
P2=(Mx*Iyy)/(Ixx*Iyy-Ixy*Ixy);
function[S1]=Sz1(x,y),//stress in flanges
    S1=Ez1*(P1*x+P2*y),
endfunction
function[S2]=Sz2(x,y),//stress in web
    S2=Ez2*(P1*x+P2*y),
endfunction
X=[Sz1(a,0.5*b);Sz1(0,0.5*b);Sz1(0,-0.5*b);Sz1(-a,-0.5*b);Sz2(0,0.5*b);Sz2(0,-0.5*b)];
printf("\nmaximum direct stress in the beam cross-section is: %f N/mm^2",max(X));