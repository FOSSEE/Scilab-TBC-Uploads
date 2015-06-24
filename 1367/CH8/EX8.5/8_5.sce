//Calculate ENDURANCE STRESS FROM using various relations
//Ex:8.5
clc;
clear;
close;
p_min=20;//in kN
p_max=50;//in kN
l=500;//in mm
d=60;//in mm
a_u=650;//in MPa
a_y=520;;//in MPa
fos=1.8;//factor of safety
m_max=p_max*l/4;//maximum bending moment in kN mm
m_min=p_min*l/4;//minimum bending moment in kN mm
m_m=(m_max+m_min)/2;//mean bending moment in kN mm
m_a=(m_max-m_min)/2;//alternating bending moment in kN mm
z=3.14*d^3/32;
a_m=(m_m/z)*1000;//mean bending stress in MPa
a_a=(m_a/z)*1000;//alternating bending stress in MPa
a_e1=a_a/((1/fos)-(a_m/a_u)^2*fos);//in MPa
disp(a_e1,"ENDURANCE STRESS FROM Gerbers Parabolic Function (in MPa) = ");
a_e2=a_a/((1/fos)-(a_m/a_u));//in MPa
disp(a_e2,"ENDURANCE STRESS FROM Goodman Straight Line Relation (in MPa) = ")
a_e3=a_a/((1/fos)-(a_m/a_y));//in MPa
disp(a_e3,"ENDURANCE STRESS FROM Soderberg Straight Line Relation (in MPa) = ")