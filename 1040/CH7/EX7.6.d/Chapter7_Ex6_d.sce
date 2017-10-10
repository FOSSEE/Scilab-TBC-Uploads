//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436
//Chapter-7 Ex7.6.d Pg No.300
//Title:Effect on dissolved oxygen concentration.
//======================================================================================================================
clear
clc
//INPUT
C_O2_critical=1*10^(-3);//Critical O2 Concentration (g/L)
percent_reduction=40/100;//Mass transfer coefficient in the upper region of the reactor is 40% less than the average
kLa_soln=0.22;//Value calculated in Ex7.6.d 
r_conv=1.25*10^(-5);//Rate at peak O2 demand (mol/L sec)
C_O2_star=1.45*10^(-4);// Concentration of O2 calculated in Ex7.6.c
M_O2=32;//Molecular weight of O2
Press_top=1;//Pressure at the top of the vessel (atm)
depth=12;//Depth of reactor (m) 
one_atm_water=10.3;//1 atm pressure corresponds to 10.3 (m) height of water

//CALCULATION
depth_ave=depth/2;
Press_ave=(Press_top+(depth_ave/one_atm_water));//Pressure at average depth (atm)
kLa_soln_reduced=kLa_soln*(1-percent_reduction);
C_star_minus_C=r_conv/kLa_soln_reduced;
C_O2_new=(C_O2_star-(C_star_minus_C));
C_O2_new_conv=C_O2_new*M_O2*1000;//Converted value of O2 concentration in(mg/L)
C_O2_star_new=C_O2_star/Press_ave;
 
 //OUTPUT
 //Console Output
 mprintf('\n\tThe new calculated value of average dissolved O2 concentration  %0.1f (mg/L)',C_O2_new_conv);
 mprintf('\n\tThe new calculated value of critical dissolved O2 concentration  %0.1E (mol/L)',C_O2_star_new);
 if(C_star_minus_C>C_O2_star_new)
     mprintf('\n\tThe reactor is operated above critical O2 concentration ');
 else
     mprintf('\n\tThe reactor should be operated at higher air rate otherwise C_O2 would drop to zero')
 end
 //File Output
fid= mopen('.\Chapter7_Ex6_d_Output.txt','w');
mfprintf(fid,'\n\tThe new calculated value of average dissolved O2 concentration  %0.1f (mg/L)',C_O2_new_conv);
mfprintf(fid,'\n\tThe new calculated value of critical dissolved O2 concentration  %0.1E (mol/L)',C_O2_star_new);
 if(C_star_minus_C>C_O2_star_new)
    mfprintf(fid,'\n\tThe reactor is operated above critical O2 concentration ');
 else
    mfprintf(fid,'\n\tThe reactor should be operated at higher air rate otherwise C_O2 would drop to zero');
 end
 mclose('all');
//====================================================END OF PROGRAM====================================================
