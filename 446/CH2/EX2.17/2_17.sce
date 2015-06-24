clear    
clc
disp('Ex-2.17');
mpc2=938;c=3*10^8;  //mpc2=mp*c^2,mp=mass of proton
Et=4*mpc2;          //final total energy
E1=Et/2;E2=E1;       //applying conservation of momentum and energy
v2=c*sqrt(1-(mpc2/E1)^2);    //lorentz transformation
u=v2;v=(v2+u)/(1+(u*v2/c^2)); 
E=mpc2/(sqrt(1-(v/c)^2));
K=E-mpc2;
printf('The threshold kinetic energy is %.3f Gev',K/10^3);
