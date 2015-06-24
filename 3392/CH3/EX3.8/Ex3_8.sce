clc
// initialization of variables
clear
// Material constants
Ex=14700 // M Pa
Ey=1000 // M Pa
Ez=735 // M Pa
Gxy=941 // M Pa
Gxz=1147 // M Pa
Gyz=103 // M pa
Vxy=0.292
Vxz=0.449
Vyz=0.39
// Stresses at a point
Sxx=7 // M pa
Syy=2.1 // M Pa
Szz=-2.8 //M Pa
Sxy=1.4 // M Pa
Sxz=0 //M Pa
Syz=0 // M Pa
// part (a)
th=1/2*atan(2*Sxy/(Sxx-Syy))*180/%pi
I1=Sxx+Syy+Szz
I2=Sxx*Syy-Sxy^2+Szz*Sxx-Sxz^2+Szz*Syy-Syz^2
M=[Sxx Sxy Sxz
   Sxy Syy Syz
   Sxz Syz Szz]
I3=det(M)   
p=[1 -I1 I2 -I3]
S=roots(p)
// results
printf('Part (a) \n')
printf('The maximum principal stress is S1 = %.2f M Pa', S(1))
printf('\n and occurs in direction th = %.1f degrees',th)
printf('\n and the intermediate principal stress S2 = %.2f M Pa occurs in the direction th = %.1f degrees \n',S(3),th+90)
printf(' The minimum principal stress is S3 = Szz = %.1f M Pa', S(2))
Ex=Ex*10^6
Ey=Ey*10^6
Ez=Ez*10^6
Gxy=Gxy*10^6
Gxz=Gxz*10^6
Gyz=Gyz*10^6
// part (b) is to find strains
Exx=Sxx/Ex-Vxy*Syy/Ey-Vxz*Szz/Ez
Eyy=-Vxy*Sxx/Ex+Syy/Ey-Vyz*Szz/Ez
Ezz=-Vxz*Sxx/Ex-Vyz*Syy/Ey+Szz/Ez
Exy=Sxy/Gxy
Exz=Sxz/Gxz
Eyz=Syz/Gyz
printf('\n Part (b)')
printf('\n The srains are')
printf('\n Exx = %.2e ,   Eyy = %.2e ,  Ezz = %.4e',Exx,Eyy,Ezz)
printf('\n Exy = %.4e ,  Exz = %.2d ,  Eyz = %.2d',Exy,Exz,Eyz)
// Wrong Exx value in the textbook
th=1/2*atan(Exy/(Exx-Eyy))
th=th*180/%pi
th2=th+90
printf('\n part (c)')
printf('\n theta = %.2f  or theta = %.2f degrees',th,th2)
// Wrong theta too since Ex given in textbook is wrong
