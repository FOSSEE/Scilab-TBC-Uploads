//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-9 Ex9.2 Pg No.389
//Title: Model II-Fraction unconverted naphthalene
//===========================================================================================================
clear
clc
//INPUT
D=2.13 ;//Reactor Diameter(m)
L=7.9;//Reactor length (m)
dp_bar= 53*10^(-6);//Particle size (m)
u_mf=0.077;//Minimum fluidzation velocity(cm/s)
u_mb=0.5;//Minimum bubbling velocity(cm/s)
rho_bulk=770;//Bulk density (kg/m3)
rho_b=350;//Density (kg/m3)
Epsilon_m=0.44;//Porosity of bed
T_K=636;//Reaction Temperature (K)
P=266;//Reaction Pressure (kPa)
k_1=1.8;//Reaction rate constant (sec-1)
k_2=k_1;
u0=0.43;//Velocity (m/sec)
C0=2*10^(-2);//Initial concentration (%)

//CALCULATION
k=k_1+k_2;
one_minus_epsilon=(1-Epsilon_m)*(rho_b/rho_bulk);
k_corrected=k*one_minus_epsilon;//based on bed volume
Nr=k_corrected*L/u0;
K=0.8;//From figure 9.12 at u0=0.43m/sec Pg No.376
Nm=K*L/u0;//Refer equation 9.21 Pg No.371
N=1/((1/Nm)+(1/Nr));//Refer equation 9.22 Pg No.371
X=(1-exp(-N));//Refer equation 9.23 Pg No.371
C_out=(1-X)*C0;
C_out_ppm=C_out*(10^6);

//OUTPUT
mprintf('\nThe fraction of naphthalene unconverted is %0.0f ppm ',C_out_ppm);

//FILE OUTPUT
fid= mopen('.\Chapter9-Ex2-Output.txt','w');
mfprintf(fid,'\nThe fraction of naphthalene unconverted is %0.0f ppm ',C_out_ppm);
mclose(fid);


//===========================================END OF PROGRAM=================================================



