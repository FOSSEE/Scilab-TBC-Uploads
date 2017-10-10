// SAMPLE PROBLEM 3/23
clc;funcprot(0);
// Given data
m_1=0.050;// kg
m_2=4;// kg
v_1=600;// m/s
v_2=12;// m/s
theta=30;// degree

// Calculation
v_2=[(m_2*v_2*cosd(theta))/(m_1+m_2),((m_1*v_1)+(m_2*v_2*sind(theta)))/(m_1+m_2)];// m/s
v_x=v_2(1);// m/s
v_y=v_2(2);// m/s
V_2=sqrt((v_x^2+v_y^2));// m/s
theta=atand((v_y/v_x));// degree
printf("\nThe velocity of the block and embedded bullet immediately after impact,v_2=%2.2fi+%2.2fj m/s \nThe final velocity and its direction are given by v_2=%2.2f m/s and theta=%2.1f degree",v_x,v_y,V_2,theta);
