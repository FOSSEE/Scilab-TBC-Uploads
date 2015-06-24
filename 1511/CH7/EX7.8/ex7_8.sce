// Example 7.8 page no-414
clear
clc

Rc1 =3
Rc2 =0.500
Re2 = 0.05
Rdash=1.2
Rs = 1.2
hfe = 50.
hie = 1.1 
hre=0
hre =0

Ai=-hfe             //EmItter follower

Ri2=hie+(1+hfe)*(Re2*Rdash/(Re2+Rdash))
k1=-Rc1/(Rc1+Ri2)
k1=ceil(k1*1000)
k1=k1/1000
R=Rs*(Rdash+Re2)/(Rs+(Rdash+Re2))
k2=R/(R+hie)
k2=floor(k2*1000)
k2=k2/1000
AI=Ai*k1*k2*hfe
B=Re2/(Re2+Rdash)
D=(1+B*AI)
Adash=AI/(1+B*AI)
Avdash=Adash*Rc2/Rs
printf("\nAI=%d\nBeta=%.2f\nAi_dash=%.1f\nAv_dash=%.2f",AI,B,Adash,Avdash)
Ri=R*hie/(R+hie)   //Ri = Input resistance without feedback
Ridash=Ri/D
Rol=Rc2  //RoL =Ro in parallel with RC2 = RC2 and Ro is large
Rldash= Rol*D/D   //with feedback considering RL
printf("\nRi=%f K Ohm\nRl_dash=%f K Ohm",Ri,Rldash)
