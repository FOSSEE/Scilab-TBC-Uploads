//CHAPTER 7_ Flow Measurement
//Caption : Gross volume flow rate(venturi)
// Example 4// Page 439
dt=0.15    //('entering the throat diameter=:')
dp=0.3     //('entering the upstream diameter=:')
Cd=0.95;
B=0.5;
pm=13600       //('entering the density of manometer  fluid=:')
At=%pi*dt^2/4;
g=9.81;

pf=995.8     
h=0.2      //('entering the height of mercury column  due to flow (in m)=:')
q=pf*At*Cd;
w=(1-B^4)^(1/2);
e=sqrt(2*g*((pm/pf)-1));
mdot_25=q*e*sqrt(h)/w
disp("Mass flow is given by :")
disp("mdot=pf*At*Cd*(1/(1-B^4)^(1/2))*sqrt(2*g*((pm/pf)-1)*sqrt h)")
printf('So the mass flow at 25 deg cent   is %fd kg/s\n',mdot_25)



pf=999.8    //('entering density of water at 25 deg cent=:')
h=0.2    //('entering the height of mercury column  due to flow (in m)=:')
q=pf*At*Cd;
w=(1-B^4)^(1/2);
e=sqrt(2*g*((pm/pf)-1));
mdot=q*e*sqrt(h)/w
// error is mdot(25 deg cent)-mdot(t deg cent)
printf(' The mass flow at 0 deg cent is %fd kg/s\n',mdot)
error1=abs(((mdot_25-mdot)/mdot_25)*100);



printf(' Change in temperature of water introduces insignificant error in mass flow measurement i.e. %1.2f%% \n',error1)
pf=988.8    //('entering density of water at 25 deg cent=:')
h=0.2    //('entering the height of mercury column  due to flow (in m)=:')
q=pf*At*Cd;
w=(1-B^4)^(1/2);
e=sqrt(2*g*((pm/pf)-1));
mdot=q*e*sqrt(h)/w
// error is mdot(25 deg cent)-mdot(t deg cent)
printf('  The mass flow at 50 deg cent is %fd kg/s\n',mdot)
error2=abs(((mdot_25-mdot)/mdot_25)*100);



printf('Therefore, change in temperature of water introduces insignificant error in mass flow measurement i.e. %1.2f%% \n',error2)




