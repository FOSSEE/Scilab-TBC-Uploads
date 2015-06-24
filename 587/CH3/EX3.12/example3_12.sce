clear;
clc;

//Example3.12[Effect of fins on Heat transfer from steam pipes]
//Given:-
k_fin=180;//thermal conductivity of aluminium alloy fins[W/m.degree Celcius]
D_tout=0.03;//Outer diameter of tube[m]
D_fout=0.06;//Outer diameter of circular fins[m]
t=0.002;//thickness of fin[m]
s=0.003;//distance between fins attached to the tube[m]
n=200;//number of fins per meter of tube
L=1;//length of tube[m]
T_surr=25;//Surrounding temperature[degree Celcius]
T_wall=120;//Temperature of wall of the tube[degree Celcius]
h=60;//Combined heat transfer coefficient[W/m^2.degree Celcius]
//Solution:-
disp("In case of no fins")
A_nf=%pi*D_tout*L;//Area of tube with no fins attached[m^2]
//Using Newton's Law of cooling
Q_nf=h*A_nf*(T_wall-T_surr);//[W]
disp("W",Q_nf,"Rate of heat transfer when no finis attached")
//The efficiency of the circular fins attached to a circular tube is plotted in Fig 3.43
L_fin=(D_fout-D_tout)/2;//[m]
//In this case we have following corrected parameters
r2c=(D_fout+t)/2;//[m]
Lc=L_fin+(t/2);//[m]
Ap=Lc*t;//[m^2]
r=r2c/(D_tout/2);
alpha=(Lc*sqrt(Lc))*sqrt(h/(k_fin*Ap));//efficiency
disp(alpha)
//for above value of alpha efficiency is found out from the plot in fig 3.43
neta=0.96;
A_f=2*%pi*((r2c^2)-((D_tout/2)^2));//Area of tube with fins attached to it[m^2]
Q_f_max=h*A_f*(T_wall-T_surr);//maximum rate of heat transfer[W]
Q_f=neta*Q_f_max;//Heat transfer through tube with fins is efficiency times the maximum rate of heat transfer[W]
disp("W",Q_f,"Heat transfer due to the finned tube")
//From unfinned portion
A_uf=%pi*D_tout*s;//Unfinned area between two consecutive fins[m^2]
Q_uf=h*A_uf*(T_wall-T_surr);//[W]
disp("W",Q_uf,"Heat transfer from the unfinned portion of the tube is")
//Since there are 200 fins per meter of the tube hence 200 interfin spacing 
Q_tf=n*(Q_f+Q_uf);//[W]
disp("W",Q_tf,"The total Heat transfer from the finned tube is")
Q_increase=Q_tf-Q_nf;//[W]
disp("W",Q_increase,"The increase in heat transfer from the tube per meter of length as a result of the addition of fins is")
eff=Q_tf/Q_nf;//Effectiveness
disp(eff,"The rate of heat transfer from the steam tube increases by a factor of")
disp("as a result of adding fins")
