clear;
clc;

//Example5.3[SteadLy Two-Dimensional Heat Conduction in L-Bars]
//Given:-
e_gen=2*(10^6);//Heat generated per unit volume[W/m^3]
k=15;//Thermal heat conductivity[W/m.degree Celcius]
T_ambient=25;//Temperature of ambient air[degree Celcius]
T_surface=90;//Temperature of the bottom surface[degree Celcius]
h=80//convection coefficient[W/m^2]
q_R=5000;//Heat flux to which right surface is subjected[W/m^2]
del_x=0.012,del_y=0.012;//Distance between equally spaced nodes[m]
//Solution:-
//After substituing values in equations of all nodal points finally we have nine equation and nine unknowns
function[temp]=f9(T)
    temp(1)=-2.064*T(1)+1*T(2)+0*T(3)+1*T(4)+0*T(5)+0*T(6)+0*T(7)+0*T(8)+0*T(9)+11.2;
    temp(2)=1*T(1)-4.128*T(2)+1*T(3)+0*T(4)+2*T(5)+0*T(6)+0*T(7)+0*T(8)+0*T(9)+22.4;
    temp(3)=0*T(1)+1*T(2)-2.128*T(3)+0*T(4)+0*T(5)+1*T(6)+0*T(7)+0*T(8)+0*T(9)+12.8;
    temp(4)=1*T(1)+0*T(2)+0*T(3)-4*T(4)+2*T(5)+109.2;
    temp(5)=0*T(1)+1*T(2)+0*T(3)+1*T(4)-4*T(5)+1*T(6)+0*T(7)+0*T(8)+0*T(9)+109.2;
    temp(6)=0*T(1)+0*T(2)+1*T(3)+0*T(4)+2*T(5)-6.128*T(6)+1*T(7)+0*T(8)+0*T(9)+212.0;
    temp(7)=0*T(1)+0*T(2)+0*T(3)+0*T(4)+0*T(5)+1*T(6)-4.128*T(7)+1*T(8)+0*T(9)+202.4;
    temp(8)=0*T(1)+0*T(2)+0*T(3)+0*T(4)+0*T(5)+0*T(6)+1*T(7)-4.128*T(8)+T(9)+202.4;
    temp(9)=0*T(1)+0*T(2)+0*T(3)+0*T(4)+0*T(5)+0*T(6)+0*T(7)+1*T(8)-2.064*T(9)+105.2;
    deff('[temp]=f9(T)',['f_1= -2.064*T(1)+1*T(2)+0*T(3)+1*T(4)+0*T(5)+0*T(6)+0*T(7)+0*T(8)+0*T(9)+11.2','f_2=1*T(1)-4.128*T(2)+T(3)+0*T(4)+2*T(5)+0*T(6)+0*T(7)+0*T(8)+0*T(9)+22.4','f_3=0*T(1)+T(2)-2.128*T(3)+0*T(4)+0*T(5)+T(6)+0*T(7)+0*T(8)+0*T(9)+12.8','f_4=T(1)+0*T(2)+0*T(3)-4*T(4)+2*T(5)+109.2','f_5=0*T(1)+T(2)+0*T(3)+T(4)-4*T(5)+T(6)+0*T(7)+0*T(8)+0*T(9)+109.2','f_6=0*T(1)+0*T(2)+T(3)+0*T(4)+2*T(5)-6.128*T(6)+T(7)+0*T(8)+0*T(9)+212.0','f_7=0*T(1)+0*T(2)+0*T(3)+0*T(4)+0*T(5)+T(6)-4.128*T(7)+T(8)+0*T(9)+202.4','f_8=0*T(1)+0*T(2)+0*T(3)+0*T(4)+0*T(5)+0*T(6)+T(7)-4.128*T(8)+T(9)+202.4','f_9=0*T(1)+0*T(2)+0*T(3)+0*T(4)+0*T(5)+0*T(6)+0*T(7)+T(8)-2.064*T(9)+105.2'])