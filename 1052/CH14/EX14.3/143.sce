clc;
//Example 14.3
//page no 152
printf("Example 14.3 page no 152\n\n");
//calculate the friction factor by using different equation's
R_e=14080//reynolds no
K_r=0.004//relative roughness
//(a) by PAT proposed equation
f_a=0.0015+[8*(R_e)^0.30]^-1
printf("\n fanning friction factor f_a=%f ",f_a);
//equation for 5000<R_e>50000
f_b1=0.0786/(R_e)^0.25 
printf("\n friction factor f_b1=%f ",f_b1);
// equation for 30000<R_e>1000000
f_b2=0.046/(R_e)^0.20
printf("\n friction factor f_b2=%f ",f_b2);
// equation for the completely turbulent region 
f_c=1/[4*(1.14-2*log10(K_r))^2]
printf("\n friction factor f_c=%f ",f_c); 
//equation given by jain 
f_d=1/[2.28-4*log10(K_r+21.25/(R_e^.9))]^2
printf("\n friction factor f_d=%f ",f_d);
f_e=0.0085 //from figur 14.2
printf("\n friction factor f_e=%f",f_e);
f_av=(f_a+f_b1+f_b2+f_c+f_d+f_e)/6
printf("\n average friction f_av=%f ",f_av);
