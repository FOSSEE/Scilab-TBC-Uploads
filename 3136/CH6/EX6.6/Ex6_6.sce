clear all; clc;

disp("The specifications are N=1800 rpm=188.5 rad/s,Q=14000cfm=233.3 cfs,and sp=5 in.wg")
N=1800 
Q=233.3
sp=5 
Ns=N*(Q^0.5)/(sp^0.75)
disp("Ns=%0.0f rpm*(cfm^0.5)/(in water^0.75)")

disp("From Figure 5.1,selecting the air foil blade,we have Etas=0.80 and Ds=d2*(sp^0.25)/Q^0.5=0.33")

Q=14000
sp=5
Eta_s=0.8
P_s=Q*sp/(Eta_s*6356)
printf(" Ps=%0.2f hp",P_s)//incorrectly rounded off in the book

d2=0.33*(14000^0.5)/(5^0.25)
printf("\n d2=%0.0f in",d2)

tau=(13.7*550)/(1800*%pi/30)
printf("\n τ=%0.0f lbf-ft",tau)

tau=40
s_s=10000
ds=[(16*tau)/(%pi*s_s)]^(1/3)
printf("\n The shaft diameter is found out to be %0.2f in",ds)
disp("Where s_s is the assumed maximum allowable shear stress of the shaft material.")
disp("Hence d_d is set as 0.75in and d_h=1.0in or rh=0.5in. Using the maximum W1 criteria,we ave ßf1=35.2 degrees and r1=9.88 inches which is rounded off to 10 inches.")

disp("Also we have b1=5 inches and ßb1=ßf1+i=37 degrees")
omega=188.5
r2=13/12
U2=omega*r2
printf(" To determine outlet dimensions we have U2= %0.1f ft/s",U2)

disp("For a straight blade we have ßdashb2=52 degrees, so try ßb2=45 degrees")
disp("Zb=26 and mu_s=0.794")
disp("Since the static pressure is specified but the total pressure is needed in the Euler equation,the discharge flow is needed.")
disp("Setting b2=b1=5 incheswe can determine the values of A2 and A3")

r2=13
b2=5
A2=2*%pi*r2*b2/144
printf(" A2=%0.3f ft^2",A2)

A2=2.83
A3=1.5*A2
printf("\n The fan discharge area A3 is set as A3=1.5*A2=%0.2f ft^2",A3)
disp("Hence we have V3=Q/A3=54.8 ft/s")

sp=62.4*5/12
rho=0.00237
V3=54.8
tp=sp+(0.5)*rho*(V3^2)
printf(" tp=%0.2f lbf/ft^2",tp)

disp("Also Eta_t=Eta_s*(tp/sp)=Eta_imp*Eta_v*Eta_m and assuming Eta_v*Eta_m=0.95")
Eta_imp=((0.8*29.5)/26)/(0.95)
printf(" So we hae Eta_imp= %0.4f",Eta_imp)

disp("So from the Euler equation, we have (29.5/0.00237)=154.8*(204.2-(82.4/tanßb2))")
disp("ß_b2=33.6 degrees")
disp("Since Zb and mu_s are related to ßb2,we have to repeat the calculations")
disp("The new alues Zb=20 and mu_s=0.781 and ß_b2=33.9 degrees are obtained")
disp("Hence the final values are 20 and ß_b2=33.9 degrees")

disp("From equation(6.12) we have(dΘ/dr)=(1/(2*tanßf1)*[2*(r/r1)*(1/r1)]")
disp("Hence tanßdash_b2=[dr/(r*dΘ)_r2]=tanßf1*((r1/r2)^2)")
tan_beta_dashb2=tan((35.2*%pi/180)*[(10/13)^2])
printf(" Thus the value of tanßdash_b2= %0.3f",tan_beta_dashb2)//Answer f=given in the book is 0.417,however the more correct answer is 0.380
betab2dash=((atan(tan_beta_dashb2))*180/%pi)
printf("\n ß_dash_b2= %0.1f degrees",betab2dash)//Since value of tanß'b2 is different,ß'b2 is different
disp("This value is smaller than ßb2 which is expected from 6.13c")






