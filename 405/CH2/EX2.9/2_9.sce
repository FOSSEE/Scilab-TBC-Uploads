clear;
clc;
printf("\t\t\tExample Number 2.9\n\n\n");
// circumferential aluminium fin
// illustration2.9
// solution

t = 0.001;// [m] thickness of fin
L = 0.015;// [m] length of fin
Ts = 170;// [degree celsius] surface temperature
Tfluid = 25;// [degree celsius] fluid temperature
k = 200;// [W/m per degree celsius] heat transfer coefficient of aluminium fin
h = 130;// [W/square meter per degree celsius] convectional heat transfer coefficient
d = 0.025;// [m] tube diameter
Lc = L+t/2;// [m] corrected length
r1 = d/2;// [m] radius of tube
r2_c = r1+Lc;// [m] corrected radius
Am = t*(r2_c-r1);// [square meter] profile area 
c = r2_c/r1;// constant to determine efficiency of fin from curve 
c1 = ((Lc)^(1.5))*((h/(k*Am))^(0.5));// constant to determine efficiency of fin from curve
// using c and c1 to determine the efficiency of the fin from figure (2-12)
// we get nf = 82 percent
// heat would be transferred if the entire fin were at the base temperature 
// both sides of fin exchanging heat 
q_max = 2*%pi*(r2_c^(2)-r1^(2))*h*(Ts-Tfluid);// [W] maximum heat transfer
q_act = 0.82*q_max;//[W] actual heat transfer
printf("the actual heat transferred is %f W",q_act);

