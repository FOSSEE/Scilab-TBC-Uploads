//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-4 Ex4.5 Pg No. 164
//Title:The optimum pore size distribution for a spherical pellet
//=============================================================================================================
clear
clc
//INPUT
d_pellet=5*10^-1;//Catalyst pellet size (cm)
k_cat =3.6;// True Rate Constant (sec-1)
V_g_cat=0.60 ;// Pore Volume of the catalyst(cm3/g)
S_g_cat=300*10^4;//Surface area of catalyst (cm2/g)
dp=0.02;// Size of powdered catalyst(cm)
rho_p=0.8 ;// Density of  catalyst particle(g/cm3)
r_bar_narrow= 40*10^(-10)//narrow distribution 
D_KA=0.012 ;//(cm2/sec)
D_AB= 0.40 ;//(cm2/sec)
r_macro=2000*10^(-10);//For Macropores
V_cat=1/rho_p;//Total catalyst volume (cm3/g)
eta=1;//For powdered catalyst

//CALCULATION
epsilon=V_g_cat/V_cat;
r_bar=2*V_g_cat/S_g_cat;
R=dp/2;
R_pellet=d_pellet/2;
D_pore_a=1/((1/D_KA)+(1/D_AB));
tau=3;//Assumed value
D_e_cat=D_pore_a*epsilon/tau;
Phi_app=R*sqrt(k_cat/D_e_cat);//Refer equation 4.55 Pg. No. 153 
D_KB=D_KA*(r_macro/r_bar_narrow);
D_pore_b=1/((1/D_KB)+(1/D_AB));
V_a_end=0.35;
del_V_a=-0.05;
V_a=V_g_cat:del_V_a:V_a_end;
 for i=1:6 
     V_b(i)=V_g_cat-V_a(i);//Refer Equation 4.81 Pg. No. 164
     S_a(i)=2*(V_a(i)/r_bar_narrow)*(10^-6);
     S_b(i)=2*(V_b(i)/r_macro)*(10^-6);
     S_g(i)=S_a(i)+S_b(i);
     k(i)=k_cat*S_g(i)/(S_g_cat*10^-4);
     D_e(i)=((D_pore_a*V_a(i)+D_pore_b*V_b(i))/V_g_cat)*(epsilon/tau);
     phi(i)=R_pellet*sqrt(k(i)/D_e(i));
     eta(i)=(3/phi(i))*((1/tanh(phi(i)))-(1/phi(i)));
     eta_k(i)=eta(i)*k(i)
   end
 //OUTPUT
 mprintf('\n===================================================================================================================')
 mprintf('\nV_a \t V_b \t\t S_a   \t S_b \t   S_g  \t k \t D_e \t       phi\teta\teta_k');
 mprintf('\nVolume \t cm3/g \t\t Surface Area \t m2/g \t\t s-1 \t cm2/s \t        (-)\t(-) \t (-)');
  mprintf('\n===================================================================================================================')
 for i=1:6
         mprintf('\n %.2f \t %0.2f \t\t %.0f \t %.1f \t %0.1f \t\t %0.2f \t%0.2e\t%0.2f \t %0.2f \t %0.2f',V_a(i),V_b(i),S_a(i),S_b(i),S_g(i),k(i),D_e(i),phi(i),eta(i),eta_k(i));
 end 
 
//FILE OUTPUT
fid= mopen('.\Chapter4-Ex5-Output.txt','w');
 mfprintf(fid,'\n===================================================================================================================')
 mfprintf(fid,'\nV_a \t V_b \t\t S_a   \t S_b \t   S_g  \t k \t D_e \t       phi\teta\teta_k');
 mfprintf(fid,'\nVolume \t cm3/g \t\t Surface Area \t m2/g \t\t s-1 \t cm2/s \t        (-)\t(-) \t (-)');
  mfprintf(fid,'\n===================================================================================================================')
 for i=1:6
         mfprintf(fid,'\n %.2f \t %0.2f \t\t %.0f \t %.1f \t %0.1f \t\t %0.2f \t%0.2e\t%0.2f \t %0.2f \t %0.2f',V_a(i),V_b(i),S_a(i),S_b(i),S_g(i),k(i),D_e(i),phi(i),eta(i),eta_k(i));
 end 
//==============================================================END OF PROGRAM===================================================
