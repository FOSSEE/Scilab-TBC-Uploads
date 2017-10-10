// SAMPLE PROBLEM 7/6
clc;funcprot(0);
// Given data
m=70;// The mass of bent plate in kg
omega=30;// rad/s
x_A=0.125;// m
y_A=0.100;// m
x_B=0.075;// m
y_B=.150;// m
d_x=0.0375;// m
d_y=0.125;// m
d_z=0.075;// m

// Calculation
// Part A
m_A=x_A*y_A*m;// kg
m_B=x_B*y_B*m;// kg
I_xxA=((m_A/12)*(y_A^2+x_A^2))+(m_A*((x_A/2)^2+(y_A/2)^2));// kg.m^2
I_yyA=(m_A/3)*(y_A)^2;// kg.m^2
I_zzA=(m_A/3)*(x_A)^2;// kg.m^2
I_xyA=0;// kg.m^2
I_xzA=0;// kg.m^2
I_yzA=0+(m_A*(x_A/2)*(y_A/2));// kg.m^2
// Part B
I_xxB=((m_B/12)*(y_B^2))+((m_B)*(d_y^2+d_z^2));// kg.m^2
I_yyB=((m_B/12)*(x_B^2+y_B^2))+(m_B*(d_x^2+d_z^2));// kg.m^2
I_zzB=((m_B/12)*(x_B^2))+(m_B*((x_A)^2+(d_x^2)));// kg.m^2
I_xyB=0+(m_B*d_x*d_y);// kg.m^2
I_xzB=0+(m_B*d_x*d_z);// kg.m^2
I_yzB=0+(m_B*d_y*d_z);// kg.m^2
I_xx=I_xxA+I_xxB;// kg.m^2
I_yy=I_yyA+I_yyB;// kg.m^2
I_zz=I_zzA+I_zzB;// kg.m^2
I_xy=I_xyA+I_xyB;// kg.m^2
I_xz=I_xzA+I_xzB;// kg.m^2
I_yz=I_yzA+I_yzB;// kg.m^2
// (a)
H_o=[-(omega*I_xz),-(omega*I_yz),(omega*I_zz)];// The angular momentum of the body in N.m.s
// (b)
T=(1/2)*(omega)*[H_o(3)];//(k.i=0,k.j=0,k.k=1) The kinetic energy in J
printf("\n(a)The angular momentum H of the plate about point O,H_O=%0.4fi+(%0.4f)j+%0.4fk \n(b)The kinetic energy of the plate,T=%1.2f J",H_o(1),H_o(2),H_o(3),T);
