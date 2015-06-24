clear all; clc;

disp("(a) Start wit calculation of specific speed")

N=2400
Q=1200
H=450
N_s=(N*Q^0.5)/(H^0.75)
printf("Ns= %0.0f rpm*gpm^0.5/ft^0.75",N_s)

disp("From figure 4.20 we obtain overall efficiency is equal to 0.76")
Q=1200
delta_p=0.00223*62.4*450
ETA_oa=0.76
P_s=(Q*delta_p)/(ETA_oa)
printf("Since Ps=(Q*delta_p)/(ETA_oa),P_s= %0.0f ft-lbf/s",P_s)

disp("To determine the inlet configuration:")
N=2400
omega=N*%pi/30
printf("Omega = %0.0frad/s",omega)
tau=P_s/omega
printf("\nτ= %0.0f lbf-ft",tau)

disp("Hence the shaft diameter Dsh can be determined")
sigma_s=10000
D_sh=(16*tau/(144*%pi*sigma_s))^(1/3)
printf("D_sh= %0.4f ft =1.34 inches",D_sh)

disp("A pure radial inet confuguratin isbselected that is Dt1=Dh1=D1(see figure 4.19).The impeller eyee area and leading edge diameters can be calculated from the following equations.")

disp("U_1=0.5*omega*D_1")
disp("Q=A_1*V_1=A_e*V_e")
disp("V_1=1.1*V_e")
disp("ß_f1=taninverse(V1/U1)")

disp("Where A_1=ε_1*pi*D_1*b_1")
disp("Where A_e=pi*D_e^2/4")
disp("With φ_1=Q/(A_e*U_e)=Q/(pi*omega*re^3)=27")
disp("Thus we obtain re=2.8 in and selecting r1=3.2 inches the final results are obtained as Ve=Q/(pi*D_e^2/4)=15.6ft")
disp("V_1=17.2ft/s , A_1=22.4in^2, b2=1.24in with ε_1=0.9 assumed. Also U_1=66.9ft/s,ß_f1=14.4 degrees,ß_b1=17 degrees and W_1=69.1 ft/s")

disp("(c) The impeller discharge is determined ")
omega=251
Q=2.676
//elt x=g*H=14490
x=14490
omega_s=omega*(Q^0.5)/((x)^0.75)
printf("\nomegas is %0.3f",omega_s)

delta_s=9
D_2=delta_s*(Q^0.5)/((x)^0.25)
printf("\nD2= %0.4f ft = 16.1in",D_2)

D_2=1.342//rounded off
omega=251
U_2=D_2*omega/2
printf("\n U_2= %0.2f",U_2)//in the book the answer has been rounded off to 168.5

disp("Selecting ß_b2=27.5 degrees")
Zb=6.5*((1+0.4)/(1-0.4))*sin(((17+27.5)/2)*%pi/180)
printf("\nZb= %0.2f is approximately equal to 6",Zb)
MUs=1-%pi*sin((27.5/6)*%pi/180)
printf("\nThus µs= %0.3f",MUs)//The answer given in the book is 0.76,but the more accurate answer is 0.749

ETA_h=1-0.8/((1200)^0.25)
printf("\n ETA_h= %0.3f",ETA_h)

disp("(3) Substituting these values into the Euler equation ,we obtain values of Vu2 and Vr2")
ETA_h=0.864
U_2=168.5
V_u2=x/(ETA_h*U_2)
printf("\n Vu2= %0.2f ft/s",V_u2)//value given in the book is equal to 99.6,however the more accurate value is equal to 99.53

disp("Vu2=µ*(U2-Vr2/tanßb2)")
disp("Hence we can find out the value of Vr2=19.4 ft/s")
V_r2=19.4
V_u2=99.6//rounded off value taken in the book
U_2=168.5
W_2=[V_r2^2+(U_2-V_u2)^2]^0.5
printf("W2= %0.2f ft/s",W_2)

disp("Hence W2/W1 >1 , which is not appropriate. A different D2 has to be selected,say D2=15in.")
disp("So we have U_2=159.6 ft/s,V_u2=106.9 ft/s , V_rt=8.5ft/s, and W_2=50.7 ft/s")
disp("Hence W_2/W_1=0.74, which is acceptable")

disp("The outlet dimensions are calculated as A2=Q/Vr2")
Q=1200
V_r2=8.5
A_2=(Q*0.00223)/V_r2//0.00223 is conversion factor to convert gallons per minute to cubic feet per second
printf("\nThus A_2= %0.3f ft^2",A_2)
disp("On converting, we get A2=45.3 in^2")
disp("A_2=ε_2*pi*D_2*b_2, where ε_2=1-(Zb*t)/(pi*D_2*sin(ß_b2))")
Zb=6
t=0.25
D_2=15
beta_b2=27.5*%pi/180//converting to radians
epsilon_2=1-(Zb*t)/(%pi*D_2*sin(beta_b2))
printf("Thus ε2 = %0.2f",epsilon_2)
A_2=45.3//in inches
b_2=A_2/(epsilon_2*%pi*D_2)
printf("\nThus we can determine b_2 which is equal to %0.0f in",b_2)

epsilon_1=1-(6*0.25)/(%pi*6.4*sin(17*%pi/180))
printf("\nε_1= %0.2f",epsilon_1)
disp("b_1 has to be adjusted")
b_1=1.3*0.9/0.74
printf("\nThus b_1 is equal to %0.2f in",b_1)

disp("The blade profile is constructed by assuming a linear blade angle distribution")
disp("ßb=ßb1+(ßb2-ßb1)*(r-r1)/(r2-r1))=17+2.44(r-3.2)")
disp("where ßb is in degrees and r is in inches.")
disp("Also deltatheta can be expressed as (180/pi)*deltar/(r*tanßb)")
disp("If we select deltar=0.43 in,then ßb,deltatheta,theta,dL and L can be calculated and tabulated as follows")

r=[3.2 3.63 4.06 4.49 4.92 5.35 5.78 6.21 6.64 7.07 7.5];
beta_1=[17 18.05 19.1 20.15 21.2 22.25 23.3 24.35 25.4 26.45 27.5];
dthita=[25.188 20.831 17.528 14.957 12.913 11.259 9.8993 8.768 7.8157 7.006 6.3116 ];
thita=[0 25.188 46.018 63.546 78.502 91.415 102.67 112.57 121.34 129.16 136.16];
dL=[1.4709 1.388 1.3143 1.2484 1.1892 1.1358 1.0873 1.0431 1.0026 0.9655 0.9314];
L=[0 1.471 2.859 4.173 5.422 6.611 7.747 8.834 9.877 10.88 11.85];
r_2=[3.2 3.63 4.06 4.49 4.92 5.35 5.78 6.21 6.64 7.07 7.5];
beta_2=[17 17.6 18.2 18.8 19.4 20 20.6 21.2 21.8 22.4 23];
dthita_2=[25.19 21.4 18.46 16.12 14.22 12.65 11.34 10.23 9.279 8.456 7.74];
thita_2=[0 25.2 46.6 65 81.2 95.4 108 119 130 139 147];
dL_2=[1.471 1.422 1.377 1.334 1.295 1.257 1.222 1.189 1.158 1.129 1.101];
L_2=[0 1.471 2.893 4.27 5.604 6.899 8.157 9.379 10.57 11.73 12.85];

table=[r' beta_1' dthita' thita' dL' L' r_2' beta_2' dthita_2' thita_2' thita_2' dL_2' L_2']
disp("The table is in the given order:beta,dthita,thita,dL,L.r,beta,dthita,thita,thita,dL,L")
disp(table)

disp("The table shows that with ßb2=27.5 degrees the blade lemgth L=11.85 in.")
sigma_s=6*11.85/(%pi*15)
printf(" Hence the solidity is sigma_s= %0.2f which is too low.",sigma_s)

sigma_s=9*12.85/(%pi*15)
printf("\n Hence the new ßb2=23 degrees and Zb=9 are selected so that we hae final value of sigma_s=%0.2f.",sigma_s)

disp("The final values of the impeller outlet dimensions are revised:")
disp("A2=0.194 ft^2=27.9 in^2, b2=0.67 in , with mu_s=0.86, epsilon_2=0.88 , Vr2=13.8 ft/s , W2=51.8 ft/s")













