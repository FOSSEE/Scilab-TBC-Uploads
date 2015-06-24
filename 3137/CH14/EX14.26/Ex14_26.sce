//Initilization of variables
v_BG=300 //mm/s
v_G=300 //mm/s
a_BGt=500 //mm/s^2
a_BGn=3600//mm/s^2
a_Gh=500 //mm/s^2
a_Bv=1800 //mm/s^2
//Calculations
w=((75-25)/25)*6 //rad/s
alpha=((75-25)/25)*10 //rad/s^2
v_B=sqrt(v_BG^2+v_G^2) //mm/s
a_v=a_Bv-a_BGt //mm/s^2
a_h=a_BGn-a_Gh //mm/s^2
a_B=sqrt(a_v^2+a_h^2) //mm/s^2
//Result 
clc
printf('The velocity and acceleration of point B are %imm/s and %imm/s^2 respectively',v_B,a_B)
