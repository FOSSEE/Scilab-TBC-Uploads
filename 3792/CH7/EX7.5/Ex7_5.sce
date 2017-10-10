// SAMPLE Pr_BOBLEM 7/5
clc;funcprot(0);
// Given data
omega=3;// rad/s
p=8;// rad/s
gamma=30;// degree
y=0.300;// m
z=0.120;// m

// Calculation
// Velocity
omega=[0,0,3];// rad/s
r_B=[0,0.350,0];// m
v_B1=det([omega(2),omega(3);r_B(2),r_B(3)]);// m/s
v_B2=-det([omega(1),omega(3);r_B(1),r_B(3)]);// m/s
v_B3=det([omega(1),omega(2);r_B(1),r_B(2)]);// m/s
v_B=[v_B1,v_B2,v_B3];// m/s
// Note that k*i=J=jcos(gamma)-ksin(gamma),K*j=-i*cos(gamma) and K*k=i*sin(gamma)
r_AB=[0,y,z];// m
// omega*r_AB=3K*(yj+zk);
omegaintor_AB=(-(omega(3)*(y*cosd(gamma))))+(omega(3)*(z*sind(gamma)));// m/s
p=[0,8,0];// rad/s
v_rel1=det([p(2),p(3);r_AB(2),r_AB(3)]);// m/s
v_rel2=-det([p(1),p(3);r_AB(1),r_AB(3)]);// m/s
v_rel3=det([p(1),p(2);r_AB(1),r_AB(2)]);// m/s
v_rel=[v_rel1,v_rel2,v_rel3];// m/s
v_A=v_B(1)+omegaintor_AB+v_rel(1);// m/s
printf("\nThe velocity of point A,v_A=%0.4fi m/s",v_A);
// Acceleration
a_B1=det([omega(2),omega(3);v_B(2),v_B(3)]);// m/s^2
a_B2=-det([omega(1),omega(3);v_B(1),v_B(3)]);// m/s^2
a_B3=det([omega(1),omega(2);v_B(1),v_B(2)]);// m/s^2
a_B=[a_B1,a_B2,a_B3];// m/s^2
a_B=[0,((a_B(2)*(cosd(gamma)))),-(a_B(2)*(sind(gamma)))];// m/s^2
omegadot=0;// m/s^2
// Assume O=omega*(omega*r_A/B)
O=[0,((omega(3)*omegaintor_AB*(cosd(gamma)))),-omega(3)*(omegaintor_AB*(sind(gamma)))];// m/s^2
// Assume O_1=2*omega*v_rel
O_1=[0,((2*omega(3)*v_rel(1)*(cosd(gamma)))),-2*omega(3)*(v_rel(1)*(sind(gamma)))];// m/s^2
a_rel1=det([p(2),p(3);v_rel(2),v_rel(3)]);// m/s^2
a_rel2=-det([p(1),p(3);v_rel(1),v_rel(3)]);// m/s^2
a_rel3=det([p(1),p(2);v_rel(1),v_rel(2)]);// m/s^2
a_rel=[a_rel1,a_rel2,a_rel3];// m/s^2
a_A=[(a_B(1)+(omegadot*r_AB(1))+O(1)+O_1(1)+a_rel1),(a_B(2)+(omegadot*r_AB(2))+O(2)+O_1(2)+a_rel2),(a_B(3)+(omegadot*r_AB(3))+O(3)+O_1(3)+a_rel3)];// m/s^2
a_A=norm(a_A);// m/s^2
printf("\nThe acceleration of point A,a_A=%1.2f m/s",a_A);
// Angular Acceleration
// Note that k*i=J=jcos(gamma)-ksin(gamma),K*j=-i*cos(gamma) and K*k=i*sin(gamma)
omega=[3,8];// rad/s (K,j)(k*j=-i*cos(gamma))
alpha=[0+(-omega(1)*omega(2)*cosd(gamma))];// (i) rad/s^2
printf("\nThe angular acceleration of the disk,alpha=%2.1fi rad/s^2",alpha);
