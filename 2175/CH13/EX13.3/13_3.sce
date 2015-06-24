clc;
R=0.287
capct=0.003;//m^3
sweptV=3500/2*capct;
ind_V=0.8*sweptV;
p=1.013;
blow_p=1.7*p;
T=288;//K
y=1.4;
T_comp=T*1.7^[(y-1)/y];
blow_T=T+[T_comp-T]/0.75;

eq_V=sweptV*blow_p*T/(p*blow_T);
inc_ind_V=eq_V-ind_V;

inc_ip=[(blow_p-p)*10^5*sweptV]/(10^3*60);
Total=40.2+inc_ip;

inc_bp=0.8*Total;

mass_delv=blow_p*10^5*sweptV/(60*R*blow_T);
cp=1.005;
m=0.149;
W=m*cp*(blow_T-T);
P=W/0.8;
Net=inc_bp-P;

disp("kW",Net,"Net increase in bp")
