clc;
//part I
p1=6.3;//bar
V1!V2=0.55/1.05;
n=1.3;
p2=p1*[(V1!V2)^n];

T1=297;
T2=T1*[(V1!V2)^[n-1]];
disp("Temperature after expansion is:");
disp("C",T2-273);


//part II
p4=1.013;//bar
V4!V5=0.1/0.05;
p5=p4*[(V4!V5)^n];

A=%pi*(63.5)^2;
sweptV=A*114/(4*10^9);

V1_V6=0.5;
V1=0.55;
V2=1.05;
p=1.013;
p3=p;
V3_V4=0.95
V5=0.05;
V4=0.1;
W_op=[10^5*0.361*10^-3]*[p1*(V1_V6)+[(p1*V1-p2*V2)/0.3]-p*V3_V4-[(p5*V5)-p*V4]/0.3]
disp("powar developed is:");
P=W_op*300/(60*010^3);
disp(P);

//part III
y=1.4;
T3=T2*(p3/p2)^((y-1)/y)

T4=T3
R=287
m4=p4*V4*[10^5*0.361*10^-3]/(R*T4);
m1=p1*V1*[10^5*0.361*10^-3]/(R*T1);
ind_mass=(m1-m4);
rate=ind_mass*300;
disp("mass flow rate of air supplied is;");
disp("kg/min",rate)
