clc;
//Example 9.4
//page no 89 fig 9.2
printf("Example 9.4 page no 89 fig. 9.2\n\n\n");
//water is discharged through a fire hose
rho=1000//density of water 
meu=0.001//viscosity of water
q=0.025//flow rate  at section 1
D1=.1//diameter at section 1
D2=.03//diameter at section 2
printf("\n density rho=%f kg/m^3\n viscosity meu=%3f kg/m.s\n volumatric flow rate q=%f m^3/s\n diametetr at section1 D1=%f m\n diameter at section2 D2=%f m",rho,meu,q,D1,D2);
S1=(%pi*D1^2)/4
S2=(%pi*D2^2)/4
printf("\n surface area at section 1 S1=%f m^2\n surface area at section 2 S2=%f m^2",S1,S2);
v1=q/S1//velocity at section1
v2=q/S2//velocity at section2
printf("\n velocity at sec1 v1=%f m/s\n velocity at sec2 v2=%f m/s",v1,v2);
//appuing bernoulli's equation between point 1 and 2
P2=0//pressure at point 2
P1=(rho/2)*(v2^2-v1^2)//pressure at point 1
printf("\n pressure at point2 P2=%f Pag(pascal gauge)\n pressure atpoint1 P1=%f Pag",P2,P1);
m_dot1=25//mass flow rate at section 1
m_dot2=25//mass flow rate at section 2
printf("\n mass flow rate m_dot1=%f kg/s\n mass flow rate m_dot2=%f kg/s",m_dot1,m_dot2);
M_dot1_x=m_dot1*v1//momentum rate in x dir at section 1
M_dot2_x=m_dot2*v2//momentum rate in x dir at section 2
printf("\n momentum rate M_dot1_x=%f N\n momentum rate M_dot2_x=%f N",M_dot1_x,M_dot2_x);
//applying momentum balance in the x direction
F_x=M_dot2_x-M_dot1_x-P1*S1//force from momentum balance
printf("\n force from momentum balance F_x=%f N",F_x);






