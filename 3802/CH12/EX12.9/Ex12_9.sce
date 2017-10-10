//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_9.sce

clc;
clear;
z=10;
ang1=0;
ang2=37;
ang3=-53;
Zr=complex(z*cosd(ang1),z*sind(ang1));
Zy=complex(z*cosd(ang2),z*sind(ang2));
Zb=complex(z*cosd(ang3),z*sind(ang3));

printf("\n (a)For phase sequence RYB:\n")
V=220;
theta1=0;
theta2=-120;
theta3=120;
Vr=complex(V*cosd(theta1),V*sind(theta1));
Vy=complex(V*cosd(theta2),V*sind(theta2));
Vb=complex(V*cosd(theta3),V*sind(theta3));

Ir=Vr/Zr;
Iy=Vy/Zy;
Ib=Vb/Zb;
In=Ir+Iy+Ib;
In_mag=sqrt(real(In)^2+imag(In)^2);
In_angle=atand(imag(In)/real(In));
printf("\n  The current through the neutral wire,\n  -In=\tMagnitude\tAngle(deg) \n\t %2.2f  \t %2.2f \n",In_mag,In_angle)

Ir_mag=sqrt(real(Ir)^2+imag(Ir)^2);
Iy_mag=sqrt(real(Iy)^2+imag(Iy)^2);
Ib_mag=sqrt(real(Ib)^2+imag(Ib)^2);
Pr=(Ir_mag)^2*real(Zr);
Py=(Iy_mag)^2*real(Zy);
Pb=(Ib_mag)^2*real(Zb);
printf("\n  Power taken by each load:\n\t Pr=%d W \n\t Py=%4.1f W \n\t Pb=%4.1f W \n", Pr, Py, Pb)



printf("\n\n (b)For phase sequence RBY:\n")
V=220;
theta1=0;
theta2=120;
theta3=-120;
Vr=complex(V*cosd(theta1),V*sind(theta1));
Vy=complex(V*cosd(theta2),V*sind(theta2));
Vb=complex(V*cosd(theta3),V*sind(theta3));

Ir=Vr/Zr;
Iy=Vy/Zy;
Ib=Vb/Zb;
In=Ir+Iy+Ib;
In_mag=sqrt(real(In)^2+imag(In)^2);
In_angle=atand(imag(In)/real(In));
printf("\n  The current through the neutral wire,\n  In=\tMagnitude\tAngle(deg) \n\t %2.2f  \t %2.2f \n",In_mag,In_angle)

Ir_mag=sqrt(real(Ir)^2+imag(Ir)^2);
Iy_mag=sqrt(real(Iy)^2+imag(Iy)^2);
Ib_mag=sqrt(real(Ib)^2+imag(Ib)^2);
Pr=(Ir_mag)^2*real(Zr);
Py=(Iy_mag)^2*real(Zy);
Pb=(Ib_mag)^2*real(Zb);
printf("\n  Power taken by each load:\n\t Pr=%d W \n\t Py=%4.1f W \n\t Pb=%4.1f W \n", Pr, Py, Pb)




