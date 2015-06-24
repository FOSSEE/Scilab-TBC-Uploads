//Exam:3.16
clc;
clear;
close;
N_a1=4*(1/4)+1;//Number of atoms contained in (100) plane
r=1.75*10^(-7);//radius of lead atom (in mm)
a_1=2*2^(1/2)*r;//edge of unit  cell in case of (100) plane
PD_100=N_a1/(a_1^2);//Planar density of plane (100)
N_a2=4*(1/4)+2*(1/2);//Number of atoms contained in (110) plane
a_21=4*r;//top edge of the plane (110)
a_22=2*2^(1/2)*r;//vertical edge of the plane (110)
PD_110=N_a2/(a_21*a_22);//Planar density of plane (110)
N_a3=3*(1/6)+3/2;//Number of atom contained in (111) plane
Ar_111=4*(3^(1/2))*r^2;//area of (111) plane
PD_111=N_a3/Ar_111;//Planar density of plane (111)
disp(PD_100,'Planar density of plane 100(in atoms/mm^2)=');
disp(PD_110,'Planar density of plane 110(in atoms/mm^2)=');
disp(PD_111,'Planar density of plane 111(in atoms/mm^2)=');