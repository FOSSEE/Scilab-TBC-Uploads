clear
clc
disp('Ex-4.9')
h=1.05*10^-34;  //value of planck's constant in J.sec
delx= 1;        // uncertainity in positon= dimension of the ball
delp=h/delx;    // uncertainity in momentum 
m=0.1;          //mass of the ball in kg
delv=delp/m;    // uncertainity in velocity
printf('The value of minimum velocity was found out to be %1.2e m/sec',delv);