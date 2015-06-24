//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-10 Ex10.2 Pg No. 414
//Title:Conversion as a function of No. of Gauzes
//===========================================================================================================
clear
clc
// COMMON INPUT
M_NH3=17;//Molecular weight NH3
M_air=29;//Molecular weight air
f_air=0.9;//Fraction of air in feed
f_NH3=(1-f_air);//Fraction of NH3 in feed
myu_air=0.0435*(10^-2);//Viscosity of air (Poise)
P_atm=(100+14.7)/14.7;//Pressure of the system
P_ref=1;//Reference Pressure
T_ref=273;//Reference temperature
T_inlet=300+T_ref;//Inlet Temperature
V_ref=22400;
T_surf=700+T_ref;//Surface Temperature
u0=1.8;//Velocity at 300 °C (m/sec)
d=0.076*(10^-1);//Size of wire (cm)
D_NH3_N2=0.23;//Diffusivity at 298 K 1 atm(cm2/s)
N=32;//Gauzes (wires/cm)
frac_N2 = 0.25*(10^(-2));//Fraction of NH3 fed into N2 (Byproduct reaction)
n =[1 2 5 10 15 20];//No. of Gauzes


//CALCULATION (Ex 10.2.a)
M_ave =f_air*M_air+f_NH3*M_NH3;
rho =(M_ave*T_ref*P_atm)/(V_ref*T_surf*P_ref);
u0_surf = u0*(T_surf/T_inlet);
Re = rho*u0_surf*100*d/myu_air;
Gamma = [1-32*(d)]^2;//From equation 10.5
Re_Gamma = Re/Gamma;
D_NH3 = 0.23*(T_surf/298)^(1.7)*(1/7.8);// at 7.8 atm 700 °C
Sc =(myu_air*P_ref)/(rho*D_NH3);
j_D = 0.644*(Re_Gamma)^(-0.57);//Refer equation 10.14
k_c = j_D*(u0_surf*100/Gamma)*(1/(Sc)^(2/3));
a_dash = 2*(%pi)*(d)*N
k_c_a_dash_u0 =(k_c*a_dash)/(u0_surf*100);
m = length(n)
for i = 1:m
    X(i) = (1-exp(-k_c_a_dash_u0*n(i)));
end
//CALCULATION (Ex 10.2.b)
for i = 1:m
    X(i) = (1-exp(-k_c_a_dash_u0*n(i)));
    Yield(i) = X(i)-frac_N2*n(i);
end


//OUTPUT(Ex 10.2.a)
mprintf('\n OUTPUT Ex10.2.a');
mprintf('\n=====================================');
mprintf('\n \tThe Ammonia Conversion');
mprintf('\n=====================================');
mprintf('\n\t Gauzes        Conversion');
mprintf('\n\t  (n)             (X)');
mprintf('\n=====================================');
for i=1:m
    mprintf('\n\t  %.0f  \t \t %.3f',n(i),X(i));
end

//OUTPUT(Ex 10.2.b)
mprintf('\n\n\n OUTPUT Ex10.2.b');
mprintf('\n==========================================');
mprintf('\n \tThe Ammonia Yield');
mprintf('\n==========================================');
mprintf('\n\t Gauzes        Yield');
mprintf('\n\t  (n)             (X-%fn)',frac_N2);
mprintf('\n==========================================');
for i=1:m
    mprintf('\n\t  %.0f \t \t %.3f',n(i),Yield(i));
end
//FILE OUTPUT
fid= mopen('.\Chapter10-Ex2-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex10.2.a');
mfprintf(fid,'\n=====================================');
mfprintf(fid,'\n \tThe Ammonia Conversion');
mfprintf(fid,'\n=====================================');
mfprintf(fid,'\n\t Gauzes        Conversion');
mfprintf(fid,'\n\t  (n)             (X)');
mfprintf(fid,'\n=====================================');
for i=1:m
    mfprintf(fid,'\n\t  %.0f  \t \t %.3f',n(i),X(i));
end
mfprintf(fid,'\n\n\n OUTPUT Ex10.2.b');
mfprintf(fid,'\n==========================================');
mfprintf(fid,'\n \tThe Ammonia Yield');
mfprintf(fid,'\n==========================================');
mfprintf(fid,'\n\t Gauzes        Yield');
mfprintf(fid,'\n\t  (n)             (X-%fn)',frac_N2);
mfprintf(fid,'\n==========================================');
for i=1:m
    mfprintf(fid,'\n\t  %.0f \t \t %.3f',n(i),Yield(i));
end
mclose(fid);

//====================================================END OF PROGRAM====================================================










