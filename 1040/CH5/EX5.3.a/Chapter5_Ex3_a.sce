//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-5 Ex5.3.a Pg No. 209
//Title:Overall heat transfer coefficients for packed bed reactor        
//=============================================================================================================
clear
clc

//INPUT
k_s= 8*10^(-4);//(cal/sec cm°C)
M_air_avg=29.24;// Average Molecular weight of air
Cp_air_mol=7.91;// cal/mol°C;
Cp_air_g=Cp_air_mol/M_air_avg;//cal/g°C
dp=0.4;//Size of the catalyst pellet (cm)
D=3.8;//Diameter of tube (cm)
R_pellet=D/2;//Radius
V_ref=22400;//Reference volume(cm3)
T_ref=273;// Reference Temperature (K)
P_ref=1;//Reference  Pressure (atm)
P=5;//System Pressure (atm)
T_C=230;//System Temperature (°C)
T=T_C+273;//System Temperature (K)
u_ft=[1.5 3];//Velocity (ft/s)
myu=0.026*(10^(-2));//Viscosity of air (Poise)
M_wt=[28 32 44 28];//Molecular weight
M_fraction=[0.04 0.07 0.06 0.83];
Cp=[15.3 7.4 10.7 7.4];//(cal/mol°C)
k_g=9.27*10^(-5);//(cal/sec cm°C)
del_H_rxn=[-29.9 -317];//(kcal/mol)

//CALCULATION
rho=M_air_avg*P*T_ref/(V_ref*P_ref*T);
u=30.533.*u_ft;//Velocity in (cm/s)
Re_p=(rho*dp/myu).*u;
Pr=Cp_air_g*myu/k_g;
ks_by_kg=k_s/k_g;
k0e_by_kg=3.5;//From figure 5.16 Pg. No. 203
kr_by_kg=2.5;//From equation 5.68 and 5.69  Pg. No. 204
for i=1:2
    ktd_by_k_air(i)=(0.1*Pr)*Re_p(i);
ke_by_kg(i)=(k0e_by_kg+kr_by_kg)+ktd_by_k_air(i);
k_e(i)=ke_by_kg(i)*k_g;
h_bed(i)=4*k_e(i)/R_pellet;
Nu_w(i)=(1.94*Pr^(0.33))*Re_p(i)^(0.5);//Refer equation 5.83  Pg. No. 208
h_w(i)=(k_g/dp)*Nu_w(i);//(cal/sec cm2 K)
h_j=100*10^(-3);//Assumed
      U(i)=1/((1/h_j)+(1/h_w(i))+(1/h_bed(i)));
end

//OUTPUT
// Console Output
mprintf('\nThe Overall Heat transfer coefficient for given Velocities' )
mprintf('\n==========================================================')
mprintf('\n  u(velocity)     U')
mprintf('\n  (ft/s)     (cal/cm2 sec K)')
mprintf('\n==========================================================')
for i=1:2
    mprintf('\n %0.2f       %f',u_ft(i),U(i))
end

//File Output
fid= mopen('.\Chapter5_Ex3_a_Output.txt','w');
mfprintf(fid,'\nThe Overall Heat transfer coefficient for given Velocities' )
mfprintf(fid,'\n==========================================================')
mfprintf(fid,'\n  u(velocity)     U')
mfprintf(fid,'\n  (ft/s)     (cal/cm2 sec K)')
mfprintf(fid,'\n==========================================================')
for i=1:2
    mfprintf(fid,'\n %0.2f       %f',u_ft(i),U(i))
end
mclose(fid);
//===============================================END OF PROGRAM=======================================================


