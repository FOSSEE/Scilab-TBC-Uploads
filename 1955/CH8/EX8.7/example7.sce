clc
clear
//input data
Hm=20//Head against which work is produced in pump in m
b22=45//Vanes set back angle at outlet in degree
N=600//Rotating speed of pump in rpm
Cr1=2//Flow velocity through impeller at inlet in m/s
Cr2=Cr1//Flow velocity through impeller at outlet in m/s
g=9.81//acceleration due to gravity in m/s^2

//calculations
Wx2=Cr2/tand(b22)//Exit relative velocity in m/s
U2=(4+(16+(4*3*792.8))^(1/2))/(2*3)//   Blade outlet speed in m/s
     //The above equation is obtained by solving 
     //Cx2=U2-Wx2     //Absolute whirl component at exit in m/s
     //C2=(Cx2^2+Cr2^2)^(1/2)    //Absolute velocity of water at exit in m/s
     //Hm=(U2*Cx2/g)-((C2^2)/(4*g))     //Total head producing work in m
     //3*(U2^2)-(4*U2)-792.8=0       
D2=(60*U2)/(3.1415*N)//Impeller diameter in m

//output
printf('The impeller diameter is %3.4f m',D2)
