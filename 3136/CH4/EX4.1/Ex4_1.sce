clear all; clc;

N=1750
r_2=0.15
U_2=N*%pi*r_2/30
printf("With U_2= %0.1f m/s",U_2)

b_2=0.012

A_2=2*%pi*r_2*b_2
printf(" and A_2= %0.4f m^2",A_2)

disp("Equations 4.3 and 4.4 can be rewritten.")
disp("H_a=µ_s*(U_2/g)*(U_2-Q/(A_2*tanß_b2))-kQ^2...(4.3)")
disp("δ_Ha/δ_Q=(-µ_s*(U_2/(g*A_2*tanß_b2)))-2*k_Q...(4.4)")
disp("Thus the equations become")

disp("(27.5/9.8)*(27.5-(4.5/(1000*0.0113*tan(60))))*µs-k*(4.5/1000)^2=60")
disp("(27.5/(9.8*0.0113*tan(60)))*µs+(2*(4.5/1000))*k=2.5*1000")

disp("from equation 4.3 µ_s=(60+(2.025*10^-5)*k)/76.25")
disp("from equation 4.4 µ_s=(25-(9*10^-5)*k)/1.434")
disp("Solving for µs and k we get µ_s=0.852 and k=2.642*10^5")

H_a=60
Q=4.5/1000
k=2.642*10^5
ETA_h=H_a/(H_a+k*(Q^2))
printf(" Thus ETA_h= %0.4f",ETA_h)

P_s=3.2*10^3
rho=1000
g=9.8
ETA_oa=(rho*Q*g*H_a)/P_s
printf("\n ETA_oa= %0.3f",ETA_oa)//answer given in the book is0.825,however the correct answer is0.827. 

disp("Eta_m=0.946")



