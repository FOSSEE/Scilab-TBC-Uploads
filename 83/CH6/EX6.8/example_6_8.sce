//Chapter 6
//Example 6.8
//page 226
//To find load flow solution using the decoupled NR method and FDLF method
clear;clc;

/////////////////////////////////////////////////////////////////////////
//Pd        Qd          Pg        Qg        V           Bus    Type/////
/////////////////////////////////////////////////////////////////////////
Pd1=2.0;    Qd1=1.0;    Pg1=0;    Qg1=0;    V1=1.04;    //1    slack bus
Pd2=0;      Qd2=0;      Pg2=0.5;  Qg2=1;    V2=1;       //2    PQ bus
Pd3=1.5;    Qd3=0.6;    Pg3=0.0;  Qg3=0;    V3=1.04;    //3    PV bus
/////////////////////////////////////////////////////////////////////////
[V1_mag,V1_ang]=polar(V1);
[V2_mag,V2_ang]=polar(V2);
[V3_mag,V3_ang]=polar(V3);
y_series=1/(0.02+%i*0.08);
y_self=2*y_series;
y_off=-1*y_series;
Ybus=[y_self y_off y_off;y_off y_self y_off;y_off y_off y_self];

[y_bus_mag_21,y_bus_ang_21]=polar(Ybus(2,1));
[y_bus_mag_22,y_bus_ang_22]=polar(Ybus(2,2));
[y_bus_mag_23,y_bus_ang_23]=polar(Ybus(2,3));
[y_bus_mag_31,y_bus_ang_31]=polar(Ybus(3,1));
[y_bus_mag_32,y_bus_ang_32]=polar(Ybus(3,2));
[y_bus_mag_33,y_bus_ang_33]=polar(Ybus(3,3));
[y_bus_mag_11,y_bus_ang_11]=polar(Ybus(1,1));

//case(a) Decoupled NR method :
printf('\ncase(a) Decoupled NR method :\n') ;

H22=0.96+23.508;
H23=-1.04*11.764;
H33=25.89;
L22=1+23.508;
H=[H22 H23;H23 H33];
delta_P=[0.73;-1.62];

delta_V_ang=inv(H)*delta_P;
delta_V2_ang=delta_V_ang(1,1);
delta_V3_ang=delta_V_ang(2,1);
printf('\ndelta_Angle_V2=');disp(real(delta_V2_ang));
printf('\ndelta_Angle_V3=');disp(real(delta_V3_ang));
V2_ang=V2_ang-delta_V2_ang;
V3_ang=V3_ang-delta_V3_ang;

Q2=-V2_mag*V1_mag*y_bus_mag_21*sin(y_bus_ang_21+V1_ang-V2_ang)-(V2_mag^2)*y_bus_mag_22*sin(y_bus_ang_22)-V2_mag*V3_mag*y_bus_mag_23*sin(y_bus_ang_23-V3_ang+V2_ang);

printf('\nQ2=');disp(real(Q2));
delta_Q2=(Qg2-Qd2)-(Q2);
printf('\ndelta_Q2=');disp(real(delta_Q2));
L=[L22];
delta_v=inv(L)*delta_Q2;
delta_V2=delta_v*V2_mag;

printf('\ndelta_V2=%0.3f',delta_V2);
V2_mag=V2_mag+delta_V2;
printf('\n\nV2=%0.3f pu',V2_mag);

Q3=-V3_mag*V1_mag*y_bus_mag_31*sin(y_bus_ang_31+V1_ang-V3_ang)-(V3_mag^2)*y_bus_mag_33*sin(y_bus_ang_33)-V2_mag*V3_mag*y_bus_mag_32*sin(y_bus_ang_32+V2_ang-V3_ang);

printf('\n\nQ3=');disp(real(Q3));

//case(b) FDLF method:

printf('\n\n\ncase(b) FDLF method :\n') ;

/////////////////////////////////////////////////////////////////////////
//Pd        Qd          Pg        Qg        V           Bus    Type/////
/////////////////////////////////////////////////////////////////////////
Pd1=2.0;    Qd1=1.0;    Pg1=0;    Qg1=0;    V1=1.04;    //1    slack bus
Pd2=0;      Qd2=0;      Pg2=0.5;  Qg2=1;    V2=1;       //2    PQ bus
Pd3=1.5;    Qd3=0.6;    Pg3=0.0;  Qg3=0;    V3=1.04;    //3    PV bus
/////////////////////////////////////////////////////////////////////////
[V1_mag,V1_ang]=polar(V1);
[V2_mag,V2_ang]=polar(V2);
[V3_mag,V3_ang]=polar(V3);
y_series=1/(0.02+%i*0.08);
y_self=2*y_series;
y_off=-1*y_series;
Ybus=[y_self y_off y_off;y_off y_self y_off;y_off y_off y_self];

[y_bus_mag_21,y_bus_ang_21]=polar(Ybus(2,1));
[y_bus_mag_22,y_bus_ang_22]=polar(Ybus(2,2));
[y_bus_mag_23,y_bus_ang_23]=polar(Ybus(2,3));
[y_bus_mag_31,y_bus_ang_31]=polar(Ybus(3,1));
[y_bus_mag_32,y_bus_ang_32]=polar(Ybus(3,2));
[y_bus_mag_33,y_bus_ang_33]=polar(Ybus(3,3));
[y_bus_mag_11,y_bus_ang_11]=polar(Ybus(1,1));

B22=-23.508;
B23=11.764;
B32=B23;
B33=B22;

B=[-B22 -B23;-B32 -B33];

delta_P=[0.73;-1.557];

delta_V_ang=inv(B)*delta_P;
delta_V2_ang=delta_V_ang(1,1);
delta_V3_ang=delta_V_ang(2,1);
printf('\ndelta_Angle_V2=');disp(real(delta_V2_ang));
printf('\ndelta_Angle_V3=');disp(real(delta_V3_ang));
V2_ang=V2_ang-delta_V2_ang;
V3_ang=V3_ang-delta_V3_ang;

Q2=-V2_mag*V1_mag*y_bus_mag_21*sin(y_bus_ang_21+V1_ang-V2_ang)-(V2_mag^2)*y_bus_mag_22*sin(y_bus_ang_22)-V2_mag*V3_mag*y_bus_mag_23*sin(y_bus_ang_23-V3_ang+V2_ang);

delta_Q2=(Qg2-Qd2)-(Q2);

delta_v=inv([-B22])*delta_Q2;
delta_V2=delta_v*V2_mag;

printf('\ndelta_V2=%0.3f',delta_V2);
V2_mag=V2_mag+delta_V2;
printf('\n\nV2=%0.3f pu',V2_mag);

Q3=-V3_mag*V1_mag*y_bus_mag_31*sin(y_bus_ang_31+V1_ang-V3_ang)-(V3_mag^2)*y_bus_mag_33*sin(y_bus_ang_33)-V2_mag*V3_mag*y_bus_mag_32*sin(y_bus_ang_32+V2_ang-V3_ang);

printf('\n\nQ3=');disp(real(Q3));
