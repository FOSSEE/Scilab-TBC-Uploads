// SAMPLE PROBLEM 3/30
clc;funcprot(0);
// Given data
v_1=6;// m/s
v_2=0;// m/s
e=0.6;// The coefficient-of-restitution
theta=30;// degree

// Calculation
// Assume a for '
v_1n=v_1*cosd(theta);// m/s
v_1t=v_1*sind(theta);// m/s
v_2n=0;// m/s
v_2t=v_2n;// m/s
function[X]=velocity(y)
    X(1)=(v_1n+v_2n)-(y(1)+y(2));
    X(2)=(e*(v_1n+v_2n))-(y(2)-y(1));
endfunction
y=[1,1];
z=fsolve(y,velocity);
v_1an=z(1);// m/s
v_2an=z(2);// m/s
v_1at=v_1t;// m/s
v_2at=v_2t;// m/s
v_1a=sqrt((v_1an)^2+(v_1at)^2);// m/s
v_2a=sqrt((v_2an)^2+(v_2at)^2);// m/s
thetaa=atand(v_1an/v_1at);// m/s
// The kinetic energies just before and just after impact, with m=m1=m2,are
T=18;// m
T_a=13.68;// m
E_l=((T-T_a)/T)*100;// The percentage energy loss(%)
printf("\nThe final speeds of the particles v_1a=%1.2f m/s ,v_2a=%1.2f m/s \nThe angle which v_1a makes with the t-direction,theta=%2.2f degree \nThe percentage energy loss is %2.0f percentage.",v_1a,v_2a,thetaa,E_l);
