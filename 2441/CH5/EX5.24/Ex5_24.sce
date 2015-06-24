//Example 5.24
clc;clear;close;
format('v',6);
Z=3+%i*9;//%///impedence
Z=Z/100;//p.u.///Impedence
I=1;//p.u.
IZ=Z;//p.u.
disp("Part(a)");
//2*I^2-2*cos(del)=[abs(IZ)]^2
cos_del=acosd((2*I^2-[abs(IZ)]^2)/2);//degree
disp(cos_del,"Phase angle between two station(degree)");
angle_abc=87.277;///degree
theta=180-angle_abc-atand(imag(IZ)/real(IZ));//degree
Preal=I^2*cosd(theta);//p.u.
disp(Preal,"Real power transfer(p.u.)");
Preactive=I^2*sind(theta);//p.u.
disp(Preactive,"Reactive power transfer(p.u.)");
disp("Part(b)");
//1.05^2+1^2-2*1.05*cos(del)=[abs(IZ)]^2
cos_del=acosd((1.05^2+1^2-[abs(IZ)]^2)/2/1.05);//degree
disp(cos_del,"Phase angle between two station(degree)");
angle_dbc=60.53;///degree
theta=atand(imag(IZ)/real(IZ))-angle_dbc//degree
Preal=I^2*cosd(theta);//p.u.
disp(Preal,"Real power transfer(p.u.)");
Preactive=I^2*sind(theta);//p.u.
disp(Preactive,"Reactive power transfer(p.u.)");
//Answer in the textbook is not accurate.
