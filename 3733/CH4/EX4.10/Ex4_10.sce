//Example 4_10
clc;funcprot(0);
//Given data
h=36;// m
p=135;// kW
q=0.44;// m^3/sec
H=100;// m
N=428;// r.p.m
d_r=4;// d_r=D/d

// Calculation
w=1000*9.81;// N
n=N*d_r*sqrt(h/H);// r.p.m
n_m=(p*1000)/(1000*9.81*q*h);// The efficiency of the model
n_p=n_m+0.03;//The efficiency of the prototype
P=p*(n_p/n_m)*(d_r)^2*(H/h)^(3/2);// kW
printf('\n The power developed by the prototype,P=%0.0f kW',P);
n_s=(n*sqrt(p))/h^(5/4);
N_s=(N*sqrt(P))/(H)^(5/4);
if(N_s~=n_s)
    printf('\n The runner is of Francis type.');
else
    printf('\n Wrong');
end
// The answer vary due to round off error
