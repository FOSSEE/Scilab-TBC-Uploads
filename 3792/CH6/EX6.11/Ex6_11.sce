// SAMPLE PROBLEM 6/11
clc;funcprot(0);
// Given data
m=30;// kg
k=0.100;// m
m_OB=10;// kg
m_c=7;// kg
K=30;// kN/m
theta=45;// degree
l=0.375;// m
g=9.81;// m/s^2

// Calculation
// (a)
// T_2=[2*((1/2)*I_G*omega^2]+[(1/2)*m*v^2];
// T_2= 6.83*v_B^2;
T_1=0;// J
l_b=l/sqrt(2);// m
V_1=(2*m_OB*g*(l_b/2))+(m_c*g*l_b);// J
V_2=0;// J
U_12=0;// J
v_B=sqrt(((T_1+V_1+U_12)-(V_2))/6.83);// m/s
// (b)
T_3=0;// J
U_13=0;// J
function[X]=deformation(y)
    X(1)=(T_1+V_1+U_13)-(T_3+((-2*m_OB*g*(y(1)/2))-(m_c*g*y(1))+((1/2)*K*10^3*y(1)^2)));
endfunction
y=[10];
z=fsolve(y,deformation);
x=z(1)*1000;// mm
printf("\n(a)The velocity of the collar as it first strikes the spring,v_B=%1.2f m/s \n(b)The maximum deformation of the spring,x=%2.1f mm",v_B,x);
