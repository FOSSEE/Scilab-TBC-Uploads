clc;
Cai=600;
alpha_i=16*%pi/180;
l=25/1000;
m=5;
vi=0.375;
n=m*vi/(Cai*sin(alpha_i)*l);
disp("m",n,"length of nozzle arc is:");

//part II
p=0.025;
Beta_1=18*%pi/180;
Cre=437;
t=0.0005;
l1=m*vi*p/n/(p*sin(Beta_1)-t)/Cre;
bhm=l1;

Beta_2=21*%pi/180;
Crf=294;
lf=m*vi*p/[n*(p*sin(Beta_2)-t)*Crf];
bhf=lf

Beta_3=35*%pi/180;
Crf2=169;
l2=m*vi*p/n/(p*sin(Beta_3)-t)/Crf2;

disp("Blade height at exit of first row, fixed and second row is respectively");
disp("mm",l2*1000,"mm",bhf*1000,"mm",bhm*1000);
