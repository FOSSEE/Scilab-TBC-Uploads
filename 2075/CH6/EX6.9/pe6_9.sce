//example 6.9
clc; funcprot(0);
// Initialization of Variable
Rl=12;//load resistance
V1=.8;//voltage
V2=2.4;//voltage
D=.8;//duty cycle
Tj=150;//degreeC
Ta=40;//degreeC
Vd=28;
Vo=.7;
I=40;//mA;
//calculation
k=(Vd-Vo)/I;
disp(round(k*1000),"R1+R2 in ohm:")
printf('pick R1=330ohm & R2=360ohm as they divide Vd setting 8V<Vg<18V')
R1=330;
R2=360;
Vn1=28;
disp(Vn1,"node voltage for V1 in V:")
Vn2=.7;
disp(Vn2,"node voltage for V2 in V:")
Vg=R2*Vd/(R1+R2)+Vn2;
disp(Vg,"gate voltage in V:")
Vgs=Vg-Vd;
disp(Vgs,"gate & source diff in V:")
Vl=Vd*Rl/(Rl+.57);
disp(Vl,"load voltage in V:")
Il=Vl/Rl;
disp(Il,"load current in A:")
Pl=D*Vl*Il;
disp(Pl,"load power in W:")
Vq=Il*.57;
Pq=D*Vq*Il;
disp(Pq,"Pq in W:")
Q=(Tj-Ta)/Pq-3.7;
disp(Q,"thermal resistance in degreeC/W:")
clear()
