clear
clc
disp('Ex-9.6(a)');
delE=0.358;hc=4.14*10^-15;          //hc in eV.nm and delE=1.44eV(given values)
f=(delE)/hc;                        //frequency 
printf('The frequency of the radiation is %.3e.\n',f);
m=0.98;                            //mass in terms of u
k=4*%pi^2*m*f^2;                   //value of k in eV/m^2
printf('The force constant is %.3e.\n',k);  
disp('Ex-9.6(b)');
hc=1240; m=0.98*1.008*931.5*10^6; Req=0.127;      //various constants in terms of  
s=((hc)^2)/(4*(%pi^2)*m*(Req^2));                // expeted spacing 
printf('The spacing was found out to be %f which is very close to the graphical value of 0.0026 eV.',s);