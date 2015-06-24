// scilab Code Exa 18.17 three stage steam turbine

t1=250;  // Initial Temperature in degree C
n_T=0.75; // overall Efficiency of the turbine
p1=10; //Initial Pressure in bar
n_m=0.98; // Mechanical Efficiency
m=5;
N=1e3; // rotor Speed in RPM
H=45; // height in m
ro=1e3;
g=9.81; // Gravitational acceleration in m/s^2
Q=2.5; // discharge in m3/s

P=(ro*Q*g*H)/(n_T);
delh_T=P/(m*n_m*1e3);
delh_st=delh_T/3;
delh1_4ss=delh_T/n_T;

//part(a)steam conditions
h1=2940; // from Mollier diagram
disp("(a)steam conditions at the turbine exit are:")
h_4ss=h1-delh1_4ss;
p4=1.2; // in bar
disp("bar",p4,"pressure:")
h4=2640;
x4=0.98;
t4=104.8; // in degree C
disp("degree C",t4,"temperature:")
disp(x4,"the dryness fraction is:")

// part(b)stage Efficiencies
h2=h1-delh_st;
p2=5;
h3=h2-delh_st;
p3=2.5;
h4=h3-delh_st;
h2s=2795;
h3s=2705;
h4s=2605;
n_st1=delh_st/(h1-h2s);
n_st2=delh_st/(h2-h3s);
n_st3=delh_st/(h3-h4s);
disp ("%",n_st1*100,"(b)Efficiency of the first stage is")
disp ("%",n_st2*100,"Efficiency of the second stage is")
disp ("%",n_st3*100,"Efficiency of the third stage is")
