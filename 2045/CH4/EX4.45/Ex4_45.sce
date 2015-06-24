//pagenumber 228 example 45
clear
icb=2*10^-6;//ampere
vbb=1;//volt
r1=50*10^3;//ohm
//current increases every 10celsius rb at 75celsius
vb=-0.1;//volt
icb=2^6*10^-6;//at 75celsius
rb=(vb+vbb)/icb;
disp("rb at 75 celsius   =   "+string((rb))+"ohm");
icb=(vb+vbb)/r1;
disp("icb   =   "+string((icb))+"ampere");
w=(log10(icb*10^6)*20/log10(2))-25;
disp("temperature at which current till max   =   "+string((w))+"celsius");

