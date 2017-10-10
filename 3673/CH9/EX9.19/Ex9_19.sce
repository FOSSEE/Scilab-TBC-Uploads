//Example 9_19 page no:377
clc;
Z1real=4;
Z1img=8;
Z1mag=sqrt(Z1real^2+Z1img^2);
Z1ang=atand(Z1img/Z1real);
Z2real=3;
Z2img=4;
Z2mag=sqrt(Z2real^2+Z2img^2);
Z2ang=atand(Z2img/Z2real);
Z3real=15;
Z3img=20;
Z3mag=sqrt(Z3real^2+Z3img^2);
Z3ang=atand(Z3img/Z3real);
Vl=400;
Vrnmag=230.94;
Vrnang=0;
Vynmag=230.94;
Vynang=-120;
Vbnmag=230.94;
Vbnang=-240;
//calculating the line currents
Irmag=Vrnmag/Z1mag;
Irang=Vrnang-Z1ang;
Irreal=Irmag*cosd(Irang);
Irimg=Irmag*sind(Irang);
Iymag=Vynmag/Z2mag;
Iyang=Vynang-Z2ang;
Iyreal=Iymag*cosd(Iyang);
Iyimg=Iymag*sind(Iyang);
Ibmag=Vbnmag/Z3mag;
Ibang=Vbnang-Z3ang;
Ibreal=Ibmag*cosd(Ibang);
Ibimg=Ibmag*sind(Ibang);
disp(Irmag,"the magnitude of Ir current is (in A)");
disp(Irang,"the angle of Ir current is (in degree)");
disp(Iymag,"the magnitude of Iy current is (in A)");
disp(Iyang,"the angle of Iy current is (in degree)");
disp(Ibmag,"the magnitude of Ib current is (in A)");
disp(Ibang,"the angle of Ib current is (in degree)");
//calculating the neutral current
Inreal=-(Irreal+Iyreal+Ibreal);
Inimg=-(Irimg+Iyimg+Ibimg);
Inmag=sqrt(Inreal^2+Inimg^2);
Inang=atand(Inimg/Inreal);
disp(Inmag,"the magnitude of neutral current is (in A)");
disp(Inang,"the degree of neutral current is (in A)");
//calculating the power in each phase
Pr=Irmag^2*Z1real;
Py=Iymag^2*Z2real;
Pb=Ibmag^2*Z3real;
P=Pr+Py+Pb;
disp(P,"the total power absorbed by the load is (in W)");
//in text book decimal values of variables used in power calculating are rounded off so power varies by 2 watts