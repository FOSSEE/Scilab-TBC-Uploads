//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-10 Ex10.1 Pg No. 408
//Title:Fraction unconverted naphthalene based on model II
//===========================================================================================================
clear
clc
//INPUT
T_ref=273;//Reference Temperature
T_feed=300+T_ref;//Temperature in (K)
SV_STP=[60000 120000];//Space velocity(Hr-1)
t_cell=0.04;//Thickness(cm)
cell_unit_area=100/(2.54^2);//No of cells per unit area(cells/cm2)
L_inch=6;// Length of monolithic converter (Inches)
Epsilon=0.68;//Porosity
myu=0.0284*(10^-2);//Viscosity of air(Poise)
rho=6.17*10^(-4);//Density of air (g/cm3)


//CALCULATION
d=sqrt(1/cell_unit_area)- t_cell;
Epsilon=(d^2/(d+t_cell)^2);

//Assume the wash coating lowers d to 0.21 cm and Epsilon to 0.68:
d_new=0.21;
Epsilon_new =0.68
a=4*Epsilon_new/d_new;
SV=SV_STP.*(T_feed/(T_ref*3600));//Refer equation 10.13
L_cm=L_inch*2.54;
u0=SV.*(L_cm);
u=u0.*(1/Epsilon);
Nu=myu/rho;//Kinematic viscosity
D_CO_N2_1=0.192;//Diffusion coefficients for binary gas mixtures(cm2/sec) at 288K
D_CO_N2_2=D_CO_N2_1*(T_feed/288)^(1.7);////Diffusion coefficients for binary gas mixtures(cm2/sec) at 573K
Sc=Nu/D_CO_N2_2;
for i=1:2
Re(i)=d_new*u(i)/Nu;
Re_Sc_d_by_L(i)=Re(i)*Sc*(d_new/L_cm);
Sh(i) = 3.66 *(1+0.095*Re_Sc_d_by_L(i))^(0.45);//Refer equation 10.7
k_c(i)=Sh(i)*D_CO_N2_2/d_new;
X(i)=1-exp((-k_c(i)*a*L_cm*u0(i)^(-1)));//Refer equation10.12
Percent_X(i)=X(i)*100;
end

//OUTPUT
mprintf('\n The Conversion expected for the given space velocities ');
mprintf(' \n Space Velocity (hr-1)\t \t Conversion (%%)');
mprintf('\n ======================================================');
for i=1:2
    mprintf('\n %.0f \t \t \t \t %.1f',SV_STP(i),Percent_X(i));
end

//FILE OUTPUT
fid= mopen('.\Chapter10-Ex1-Output.txt','w');
mfprintf(fid,'\n The Conversion expected for the given space velocities ');
mfprintf(fid,' \n Space Velocity (hr-1)\t \t Conversion (%%)');
mfprintf(fid,'\n ======================================================');
for i=1:2
    mfprintf(fid,'\n %.0f \t \t \t \t %.1f',SV_STP(i),Percent_X(i));
end
mclose(fid);


//================================================END OF PROGRAM=========================================================

















