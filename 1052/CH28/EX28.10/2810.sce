clc;
//Example 28.10
//page no 438
printf("Example 28.10 page no 438\n\n");
// a compliance stack test on a facility yields the results ,we have to determine whether the incineratormeets the state particulate standard of 0.05 gr/dscf
g=9.807//grav. acc
rho_l=1000//density of manometer fluid,kg/m^3
rho=1.084//density of flue gas,kg/m^3
C=0.85//pitot tube constant 
h=0.3772//mean pitot tube reading ,in H2O
m=0.16//mass of particulate collected ,g
V=35//volume sampled,dscf
C_p=m*15.43/V//partculate concentration,gr/dscf
printf("\n particulate con. C_p=%f gr/dscf",C_p);
//since this does not exceed the particulate standard of 0.05 gr/dscf,the facility is not in compliance
//the stack flow rate is calculated from the velocity measurement
v=C*sqrt(2*g*(rho_l/rho)* 0.0254*h)/.3048//velocity
printf("\n velocity v=%f fps",v);
D=2//diameter of stack,ft
v_s=(v*%pi*D^2/4)*60//stack flow rate 
printf("\n stack flow rate v_s=%f acfm",v_s);
w_mo=0.07//% moisture in stack gas
v_dry=(1-w_mo)*v_s//dry volumetric flow rate 
//correct to standard conditions of  70 deg F and 1 atm
T_s=530// standard temprature deg R
P_s=29.9//standard pressure,psi
P_g=29.6//pressure of stack gas,psi
T_g=600//temprature of standard gas,deg R
q_s=v_dry*(T_s/T_g)*(P_g/P_s)//standard volumetric flow rate
printf("\n standard volumetric flow rate q_s=%f dscfm",q_s) 
R_e=C_p*q_s*(1440/7000)//particulate emission rate
printf("\n particulate emmision rate R_e=%f lb/day",R_e);
w_co2=0.14//percentage of co2 by volume
w_N2=0.79//percentage of N2 by volume
mw_o=32//molecular weight of oxygen
mw_co2=44//molecular weight of co2
mw_N2=28//molecular weight of N2
MW_d=w_mo*mw_o + w_co2*mw_co2 +w_N2*mw_N2//molecular weight of flue gas on dry basis
printf("\n mol. weight of flue gas on dry basis MW_d=%f lb/lbmol",MW_d);
 

