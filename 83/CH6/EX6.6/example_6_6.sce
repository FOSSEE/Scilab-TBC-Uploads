//Chapter 6
//Example 6.6
//page 218
//To find load flow solution using the NR method
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

//direct computer solution has been found as below by running for 3 iterations

n=3;
for i=1:n
//from eq.6.27 and 6.28
P2=V2_mag*V1_mag*y_bus_mag_21*cos(y_bus_ang_21+V1_ang-V2_ang)+(V2_mag^2)*y_bus_mag_22*cos(y_bus_ang_22)+V2_mag*V3_mag*y_bus_mag_23*cos(y_bus_ang_23+V3_ang-V2_ang);

P3=V3_mag*V1_mag*y_bus_mag_31*cos(y_bus_ang_31+V1_ang-V3_ang)+(V3_mag^2)*y_bus_mag_33*cos(y_bus_ang_33)+V2_mag*V3_mag*y_bus_mag_32*cos(y_bus_ang_32+V2_ang-V3_ang);

Q2=-V2_mag*V1_mag*y_bus_mag_21*sin(y_bus_ang_21+V1_ang-V2_ang)-(V2_mag^2)*y_bus_mag_22*sin(y_bus_ang_22)-V2_mag*V3_mag*y_bus_mag_23*sin(y_bus_ang_23+V3_ang-V2_ang);

P2=real(P2);
P3=real(P3);
Q2=real(Q2);

delta_P2=(Pg2-Pd2)-(P2);
delta_P3=(Pg3-Pd3)-(P3);
delta_P2=(Pg2-Pd2)-(P2);
delta_Q2=(Qg2-Qd2)-(Q2);

//forming jacobian matrix by differentiating expressions of P2,P3,Q2
j11=V2_mag*V1_mag*y_bus_mag_21*sin(y_bus_ang_21+V1_ang-V2_ang)+V2_mag*V3_mag*y_bus_mag_23*sin(y_bus_ang_23+V3_ang-V2_ang);
j12=-V2_mag*V3_mag*y_bus_mag_23*sin(y_bus_ang_23+V3_ang-V2_ang);
j13=V1_mag*y_bus_mag_21*cos(y_bus_ang_21+V1_ang-V2_ang)+(V2_mag*2)*y_bus_mag_22*cos(y_bus_ang_22)+V3_mag*y_bus_mag_23*cos(y_bus_ang_23+V3_ang-V2_ang);

j21=-V2_mag*V3_mag*y_bus_mag_32*sin(y_bus_ang_32+V2_ang-V3_ang);
j22=V3_mag*V1_mag*y_bus_mag_31*sin(y_bus_ang_31+V1_ang-V3_ang)+V2_mag*V3_mag*y_bus_mag_32*sin(y_bus_ang_32+V2_ang-V3_ang);
j23=V3_mag*y_bus_mag_32*cos(y_bus_ang_32+V2_ang-V3_ang);

j31=V2_mag*V1_mag*y_bus_mag_21*cos(y_bus_ang_21+V1_ang-V2_ang)+V2_mag*V3_mag*y_bus_mag_23*cos(y_bus_ang_23+V3_ang-V2_ang);
j32=-V2_mag*V3_mag*y_bus_mag_23*cos(y_bus_ang_23+V3_ang-V2_ang);
j33=-V1_mag*y_bus_mag_21*sin(y_bus_ang_21+V1_ang-V2_ang)-(V2_mag*2)*y_bus_mag_22*sin(y_bus_ang_22)-V3_mag*y_bus_mag_23*sin(y_bus_ang_23+V3_ang-V2_ang);

J=[j11 j12 j13;j21 j22 j23;j31 j32 j33];
J=real(J);

//power residuals
PR=[delta_P2;delta_P3;delta_Q2];

//changes in variables
ch_var=inv(J)*PR;

V2_ang=V2_ang+ch_var(1,1);
V3_ang=V3_ang+ch_var(2,1);
V2_mag=V2_mag+ch_var(3,1);

P1=(V1_mag^2)*y_bus_mag_11*cos(y_bus_ang_11)+V1_mag*V2_mag*y_bus_mag_21*cos(y_bus_ang_21+V2_ang-V1_ang)+V1_mag*V3_mag*y_bus_mag_31*cos(y_bus_ang_31+V3_ang-V1_ang);
Q1=-V1_mag^2*y_bus_mag_11*sin(y_bus_ang_11)-V1_mag*V2_mag*y_bus_mag_21*sin(y_bus_ang_21+V2_ang-V1_ang)-V1_mag*V3_mag*y_bus_mag_31*sin(y_bus_ang_31+V3_ang-V1_ang);

Q3=-V3_mag*V1_mag*y_bus_mag_31*sin(y_bus_ang_31+V1_ang-V3_ang)-(V3_mag^2)*y_bus_mag_33*sin(y_bus_ang_33)-V2_mag*V3_mag*y_bus_mag_32*sin(y_bus_ang_32+V2_ang-V3_ang);
Qg3=Q3+Qd3;

end

S1=real(P1)+%i*real(Q1);
S2=P2+%i*Q2;
S3=P3+%i*Q3;

printf('\nThe final results are given below:\n');
printf('V2=%0.3f @ %0.3f rad\n',V2_mag,V2_ang);
printf('V3=%0.3f @ %0.3f rad\n',V3_mag,V3_ang);
printf('Qg3=%0.2f pu(with in limits)\n',Qg3);
printf('\nS1=');disp(S1);printf('pu');
printf('\n\nS2=');disp(S2);printf("pu");
printf('\n\nS3=');disp(S3);printf("pu");
printf('\n\nTransmission losses=%0.3f pu\n',(real(P1)+P2+P3));

//Line Flows

//V_mag=[V1_mag V2_mag V3_mag];
//V_ang=[V1_ang V2_ang V3_ang];
v1=V1_mag*(cos(V1_ang)+%i*sin(V1_ang));
v2=V2_mag*(cos(V2_ang)+%i*sin(V2_ang));
v3=V3_mag*(cos(V3_ang)+%i*sin(V3_ang));
V=[v1 v2 v3];
for i=1:3
    for j=1:3
        s(i,j)=conj(V(i))*(V(i)-V(j))*(2.941-%i*11.764)+conj(V(i))*V(i)*(%i*0.01);
        s(j,i)=conj(V(j))*(V(j)-V(i))*(2.941-%i*11.764)+conj(V(j))*V(j)*(%i*0.01);
     end
end
P=real(s);
Q=-imag(s);
printf('\nLine Flows\nThe following matrix shows the real part of line flows(in pu)');disp(P);
printf('\nThe following matrix shows the imaginary part of line flows(in pu)');disp(Q);