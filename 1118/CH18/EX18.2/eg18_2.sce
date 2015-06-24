clear;
//clc();


function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction



previousprot = funcprot(0)
funcprot(0)


x0g1=0.05;
x1g1=0.3;
x2g1=0.2;
x0g2=0.03;
x1g2=0.25;
x2g2=0.15;
x0l1=0.70;
x1l1=0.3;
x2l1=0.3;
x0l2=0.7;
x1l2=0.3;
x2l2=0.3;
x0t1=0.12;
x1t1=0.12;
x2t1=0.12;
x0t2=0.1;
x1t2=0.1;
x2t2=0.1;
vf=1;
ia01=0;

z1=(%i)*((x1g1+x1t1)*(x1g2 +x1t1 + x1l1*0.5))/(x1g1 +x1t1 + x1g2+ x1t1+x1l1*0.5);
z2=(%i)*((x2g1+x2t1)*(x2g2+ x2t2+ x2l2*0.5))/(x2g1 +x2t1 +x2g2 +x2t2 +x2l2*0.5);
z0=(%i)*(x0g1+x0t1);
//a).LLG fault
za0=z0;
za2=z2;
ia1=vf/(z1+(z0*z2/(za0+za2)));
printf("The positive sequence current in amperes is:");
disp(ia1);

ia0=-(3.1729*z2/(z0+z2));
printf("The zero sequence current in amperes is:");
disp(ia0);

ia2=-ia1*z0/(z0+z2);
printf("The negative sequence current in amperes is:")
disp(ia2);

//b).LL fault

ia11=vf/(z1+z2);
printf("The positive sequence current in amperes is:");
disp(ia11);

ia21=-ia11;
printf("The negative sequence current in amperes is:");
disp(ia21);

ia=ia01+ia11+ia21;
printf("phase a fault current  is:")
disp(ia);

mag=1;
theta=120;
[r,i]=d(mag,theta);
alpha=complex(r,i);

ib=ia01+alpha^2*ia11+alpha*ia21;
printf("phase b fault current in pu is:")
disp(ib);

ic=ia01+alpha*ia11+alpha^2*ia21;
printf("phase c fault current in pu is:")
disp(ic);
