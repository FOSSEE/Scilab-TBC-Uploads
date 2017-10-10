clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.6.1\n')
//given data
mprintf('NOTE:The mass given in textbook should be equal\n to 3.7 kgs and not 8.7 Kgs')
m=3.7//mass in kg
g=9.81// gravity 
K=7550////stiffness of in N/m
u=0.22//coefficient of friction
Fo=19.6//amp of force in N
f=5//frequency of force 
//calculations
F=u*m*g//frictional force
W=2*%pi*f
Wn=sqrt(K/m)
bet=(W/Wn)
X=(Fo/K)*sqrt(1-(4*F/(%pi*Fo))^2)/(1-bet^2)//Eqn 4.6.2 in Sec 4.6
Ceq=4*F/(%pi*W*X)//equivalent viscous damping Eqn 4.6.1 in Sec 4.6
//output
mprintf('\nThe amplitude of vibration of mass is %f m\n The equivalent viscous damping is %f N-sec/m',X,Ceq)
mprintf('\nNOTE: slight differnce in answer compared to textbook\n is due approximation of value of pi in the taxtbook') 
