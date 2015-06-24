clc
clear
//Input data
d=0.065;//The cylinder bore diameter in m
L=6;//The length of the stroke in cm
l=12;//The length of the connecting rod in cm
p=50;//The pressure in the cylinder in bar
q=90;//The crank position in power stroke of the cycle for one cylinder in degrees
Ff=900;//Friction force in N
pi=3.141;//Mathematical constant valu of pi
o=0.2;//Wrist pin off set in cm

//Calculations
r=L/2;//The crank length in cm
sineA=r/l;//The value of sine 
cosA=(1-(sineA)^2)^(1/2);//The value of cosine
Fr=[[(p*10^5*(pi/4)*d^2)-Ff]/cosA]/1000;//The force in the connecting rod in kN
Ft=Fr*sineA;//The side thrust on the piston in kN
sineA1=(r-o)/l;//The value of sine
cosA1=(1-(sineA1)^2)^(1/2);//The value of cosine
Fr1=[[(p*10^5*(pi/4)*d^2)-Ff]/cosA1]/1000;//The force in the connecting rod in kN
Ft1=Fr1*sineA1;//The side thrust in kN

//Output 
printf('(a) The force in the connecting rod = %3.3f kN \n The side thrust on the piston = %3.3f kN \n (b) The side thrust on the piston = %3.3f kN ',Fr,Ft,Ft1)
