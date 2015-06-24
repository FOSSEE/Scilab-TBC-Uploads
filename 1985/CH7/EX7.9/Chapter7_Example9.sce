clc
clear
//Input data
v=2400//Volume of the hall in m^3
s=600//Seating capacity of the hall
a=[500,600,500,20,400,200]//Area or number for plaster ceiling, plaster walls, wood floor, wood doors, seats cushion, seats cane in m^2 for arae
c=[0.02,0.03,0.06,0.06,0.01,0.01]//Coefficient of absorption for plaster ceiling, plaster walls, wood floor, wood doors, seats cushion, seats cane sabine/ chair
am=0.45//Absorption of each member of the audience in sabine
//Calculations
T1=a(1)*c(1)+a(2)*c(2)+a(3)*c(3)+a(4)*c(4)+a(5)*c(5)+a(6)*c(6)//Total absorption when the hall is empty in sabine
t1=(0.16*v)/T1//Reverberation time in s
T2=a(1)*c(1)+a(2)*c(2)+a(3)*c(3)+a(4)*c(4)+a(5)*am+a(6)*am//Total absorption when the hall is occupied with audience 
t2=(0.16*v)/T2//Reverberation time in s

//Output
printf('The reverberation time of the hall \n (i) when it is empty = %3.3f s \n (ii) when filled with audience = %3.2f s',t1,t2)
