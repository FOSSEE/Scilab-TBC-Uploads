//Example 6.3, Page 123
clc
per=.88
v=220//in v
p=20//in kw
I=(p*1000)/(per*v)
T=(p*1000*60)/(2*%pi*1200)
//Part a
E_motor=v-(I*.1)
v_arm=v+E_motor
Ir=2*I//Rated current
R=v_arm/Ir
disp(R)
R_Extra=R-.1
printf("\n Extra resistance added to motor armature is %f ohm ",R_Extra)
//Part b
T_Full_load=T*2
printf("\n Full load torque is %f N-m ",T_Full_load)
//Part c
E=(E_motor*400)/1200
//disp(E)
I_braking=(v+E)/R
T_braking=(T/103.3)*I_braking
printf("\n Braking Torque is  %f N-m ",T_braking)
printf("\n Braking  current is  %f A",I_braking)


