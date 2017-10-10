//Example 4_7
clc;funcprot(0);
//Given data
Q=400;// m^3/sec
H=45;// m
n_t=0.90;// The turbine efficiency
N=250;// r.p.m

//Calculation
w=1000*9.81;// N
P_t=(w*Q*H*n_t)/(1000);// kW
//(a)
N_sf=200;// Specific speed
P=((N_sf*H^(5/4))/N)^2;// kW
f_n=(P_t/P);// Number of francis turbine required
// (b)
N_sk=600;// Specific speed
P=((N_sk*H^(5/4))/N)^2;// kW
k_n=(P_t/P);// Number of kaplan turbine required
printf('\n Number of francis turbines=%0.0f \n Number of kaplan turbine used=%0.0f',f_n,k_n);
if(f_n>k_n)
    printf('\n The installation of kaplan turbine is more economical than francis turbine as number of units required is less.');
else(k_n>f_n)
    printf('\n The installation of francis turbine is more economical than kaplan turbine as number of units required is less.');
end
// The answer provided in the textbook is wrong
