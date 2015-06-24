clear all; clc;

disp("From ETAad=(1-((p0e/p0i)^(ETAs*(k-1)/k)))/(1-((p0e/p0i)^(k-1)/k)))")
ETA_ad=(1-((14.7/200)^(0.85/3.5)))/(1-(14.7/200)^(0.2857))
printf("\n ETAad= %0.3f",ETA_ad)

disp("T_soe/T_0i=((p0e/p0i)^((k-1)/k))")
//let T_soe/T_0i=w
w=(14.7/200)^0.2857
printf("\n T_soe/T_0i= %0.4f",w)

T_soe=0.4743*(1800+460)
printf("\n T_soe= %0.0f R",T_soe)

disp("ETAad=(T_0i-T_0e)/(T_0i-T_soe)=0.893")
T_0i=T_soe/w//since T_soe/T_0i=w
T_0e=T_0i-(ETA_ad*(T_0i-T_soe))
printf(" Thus T_0e= %0.0f R=739 degrees Farenheit",T_0e)

disp("Also for impulse turbine, we have ß2=ß3.Hence from delta_H0=Um*(V_u2-V_u3)=Um*[Um+Va*tanß2-(Um-Va*tan(ß3))]=2*Um*Va*tanß")
delta_h0=2*750*400*tan(50*%pi/180)
printf("\n delta_h0= %g is approximately equal to 7.15*10^5 ((ft/s)^2)",delta_h0)
//Let 0.24*778*32.2*delta_T0=u
u=7.15*10^5
delta_T0=u/(0.24*778*32.2)
printf("\n\n Or 0.24*778*32.2*delta_T0=7.15*10^5,we have temperature rise per stage = %0.0f degrees Farenheit",delta_T0)

n_s=(1800-739)/119
printf("\n Hence the number of stages n_s= %0.2f is approximately equal to 9",n_s)
