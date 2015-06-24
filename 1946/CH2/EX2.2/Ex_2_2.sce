// Example 2.2:Acceptance Angle
clc;
clear;
close;
n1=1.53;//Waveguide Refractive Index
n2=1.48;//Cladding Refractive Index
no=1;// for air
Oa= asind((sqrt(n1^2 - n2^2))/no);//Acceptance Angle
Oc= asind(n2/n1);// Critical Angle
disp(Oa,"Acceptanc Angle in Degree")
disp(Oc,"Critical angle in degree")
