//Example 4_9
clc;funcprot(0);
//Given data
Q=30;//m^/sec
H=7.5;// m
n_t=0.85;
N=50;///r.p.m
Sr=0.85;//Speed ratio
g=9.81;//The acceleration due to gravity in m/s^2

//Calculation
w=1000*9.81;// N
P_t=(w*Q*H*n_t)/1000;// kW
N_s=(N*sqrt(P_t))/(H)^(5/4);//Specific speed
if(N_s>=174)
    printf('\n (a)As N_s=340,two turbine units can be used.\n (b)The runner is of Francis type.');
else
    printf('\n Wrong');
end
D=Sr*60*(sqrt(2*g*H))*(1/(%pi*N));//The diameter of the runner in m
printf('\n (c)The diameter of the runner,D=%0.2f m',D);
// The answer vary due to round off error
