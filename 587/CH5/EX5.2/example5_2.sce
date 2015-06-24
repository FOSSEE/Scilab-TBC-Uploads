clear;
clc;

//Example5.2[Heat transfer from triangular fins]
//Given:-
k=180;//Thermal conductivity of aluminium alloy[W/m.degree Celcius]
L=0.05;//length of fin[m]
b=0.01;//Base thickness of fin[m]
T_surr=25;//Temperature of surrounding[degree Celcius
h=15;//heat transfer coefficient[W/m^2.degree Celcius]
M=6;//No of equally spaced nodes along the fin
//Solution (a)
del_x=L/(M-1);//Nodal Spacing[m]
T0=200;//Temperature at node 0[degree Celcius]
theta=atan(b/2*L);
//sigmaQ_all_sides=kA_left((T_(m-1)-T_m)/del_X)+((T_(m+1)-T_m)/del_x)+(hA_conv(T_surr-T_m))=0
//Simplifying above equation we get
disp("((5.5-m)T_(m-1))-((10.008-2m)Tm)+((4.5-m)T_m+1)=-0.29")
//Putting m=1,2,3,4 we get five equations in five unknowns 
//Solving these five equations we get temperatures at node 1,2,3,4 and 5 respectively
function[node]=f5(T)
    node(1)=-8.008*T(1)+3.5*T(2)+0*T(3)+0*T(4)+0*T(5)+900.209;
    node(2)=3.5*T(1)-6.008*T(2)+2.5*T(3)+0*T(4)+0*T(5)+0.209;
    node(3)=0*T(1)+2.5*T(2)-4.008*T(3)+1.5*T(4)+0*T(5)+0.209;
    node(4)=0*T(1)+0*T(2)+1.5*T(3)-2.008*T(4)+0.5*T(5)+0.209;
    node(5)=0*T(1)+0*T(2)+0*T(3)+1*T(4)-1.008*T(5)+0.209;
    deff('[node]=f5(T)',['f_1=-8.008*T(1)+3.5*T(2)+0*T(3)+0*T(4)+0*T(5)+900.209','f_2=3.5*T(1)-6.008*T(2)+2.5*T(3)+0*T(4)+0*T(5)+0.209','f_3=0*T(1)+2.5*T(2)-4.008*T(3)+1.5*T(4)+0*T(5)+0.209','f_4=0*T(1)+0*T(2)+1.5*T(3)-2.008*T(4)+0.5*T(5)+0.209','f_5=0*T(1)+0*T(2)+0*T(3)+1*T(4)-1.008*T(5)+0.209'])
    //Solution(b)
 T1=T(1),T2=T(2),T3=T(3),T4=T(4),T5=T(5);
    w=1;//width[m]
    Q_fin=(h*w*del_x/cos(theta))*[(T0+2*(T1+T2+T3+T4)+T5-10*T_surr)];//[W]
    disp("W",Q_fin,"The total rate of heat transfer from the fin is")
    //Solution(c)
    Q_max=(h*2*w*L/cos(theta)*(T0-T_surr));//[W]
neta=Q_fin/Q_max;
disp(neta,"Efficiency of the fin is")
