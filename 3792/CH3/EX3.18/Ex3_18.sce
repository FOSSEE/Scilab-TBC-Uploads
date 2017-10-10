// SAMPLE PROBLEM 3/18
clc;clear;funcprot(0);
// Given data
m_A=2;// kg
m_B=4;// kg
L=0.5;// m
K_theta=13;// N.m/rad
g=9.81;// The acceleration due to gravity in m/sec^2

// Calculation
// (a)
// T_1+V_1+U_12=T_2+V_2
function[X]=velocity(y)
    X(1)=(((1/2)*m_A*y(1)^2)+((1/2)*m_B*(y(1)/4)^2)-(m_A*g*L)-(m_B*g*(L*sqrt(2)/4))+((1/2)*K_theta*(%pi/2)^2))-0;
endfunction
y=[0.1];
v_A=fsolve(y,velocity);// m/s
printf("\nThe speed of particle A,v_A=%0.3f m/s",v_A);
// (b)
for(i=1:10)
    theta=[0,10,20,30,40,50,60,70,80,90];// degree
    // T_1+V_1+U_12=T_2+V_2
    v_A(i)=sqrt(((m_A*g*L*(1-cosd(theta(i))))+((m_B*g*(1/2)*[((L*sqrt(2))/2)-((2*(L/2)*sind((90-(theta(i)))/2)))]))-((1/2)*K_theta*(theta(i)*(%pi/180))^2))/(((1/2)*m_A)+((1/2)*m_B*((1/4)*cosd((90-(theta(i)))/2))^2)));
end
plot(theta',v_A);
xlabel('theta,deg');
ylabel('v_A,m/s');
printf("\nThe maximum value of v_A is seen to be (v_A)_max=1.400 m/s at theta=56.4 degree.");
