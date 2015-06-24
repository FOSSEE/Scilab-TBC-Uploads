clear all; clc;

V= 40*(5280/3600)
printf('V is equal to %0.2f ft/s',V)
N=80
omega=(N*%pi)/30
printf('\n\nomega is equal to %0.2f rad/s',omega)
rt=15
rh=1
Vt=(rt*omega)/V//tip velocity ratio
printf('\n\nThe tip velocity ratio is equal to %0.2f ',Vt)

Zb=12/Vt
printf('\n \n Optimum number of blades is equal to %0.2f ',Zb)
disp("On approximating,the optimum number of blades is equal to 5")

rm=[(rt^2+rh^2)/2]^0.5
printf('\nThe mean radius is equal to %0.2f ft',rm)

Um=rm*omega
printf('\n\nThe blade peripheral velocity at the mean radius is equal to %0.1f ft/s',Um)

disp("Assuming V1=V")
beta_1=(atan(Um/V))*180/%pi
printf('\nThe relative flow angle at the inlet is equal to %0.1f degrees',beta_1)

beta_2=65
tanbetam=0.5*(tan(beta_1*%pi/180)+tan(beta_2*%pi/180))
printf('\n\nThe value of tan of beta m is equal to %0.3f ',tanbetam)
beta_m=(atan(tanbetam))*180/%pi
printf('\n \n Mean relative flow angle (betam) is equal to %0.2f degrees',beta_m)

Wm=V/cos(beta_m*%pi/180)
printf('\n\nThe relative flow velocity (Wm) is equal to %0.1f ft/s',Wm)

rho=0.0763
gc=32.2
c=1.2
Cl=0.28
Cd=0.015
F_um=(rho*Wm^2*c*(Cl*cos(beta_m*%pi/180)-Cd*sin(beta_m*%pi/180))/(2*32.2))
printf('\n\nThe tangential force (Fum), is equal to %0.2f lb/ft',F_um)

delta_r=14//rt-rh=deltar
Z_br=5//approximated value of Zb
P_s=rm*F_um*delta_r*omega*Z_br/550
printf('\n\nPs is approximately equal to %0.1f hp',P_s)

A=%pi*rt^2
A_r=707//rounding of A=706.9 to 707
P_smax=((8/27)*(rho/gc)*707*58.67^3)/550
printf('\n\nFrom the actuator theory,the maximum possible shaft power will be equal to %0.1f hp.',P_smax)












