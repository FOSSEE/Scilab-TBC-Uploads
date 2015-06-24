clc;
//Example 15.6
//page no 173
printf("Example 15.6 page no 173\n\n");
//methane is flowing through a horizontal steel pipe
m_dot=10//mass flow rate, lb/s
D=1//diameter of pipe,ft
G=m_dot/((%pi/4)*D^2)//mass velocity flux
P=89.7//inlet pressure
T=530//temprature,k
MW=16//mol. weight
R=10.73//gas constant
//applying eq 15.7
rho=P*MW/(R*T)//density
f=0.008//friction factor
L=15840//length of pipe,ft
g_c=32.2//gravitational constant
P_drop=(2*f*L*(G^2))/(g_c*rho*D)//pressure drop
P1=89.7//inlet pressure,psia
P2=P1-(P_drop/144)
P2=54.7//corrected value
P_drop=P1-P2//updated value of P_drop
printf("\n pressure drop P_drop=%f psia",P_drop);
