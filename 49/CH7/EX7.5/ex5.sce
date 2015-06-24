//CHAPTER 7_ Flow Measurement
//Caption : Gross volume flow rate(venturi)
// Example 5// Page 440
dt=.1     //('entering the throat diameter=:')
dp=.2      //('entering the upstream diameter=:')
Cd=0.95;
g=9.81
B=0.5;
At=%pi*dt^2/4;
pf=780    //('entering density of oil in the pipeline =:')
pm=1000    //('entering the density of manometer  fluid=:')
w=(1-B^4)^(1/2);
e=sqrt(2*g*((pm/pf)-1));
S_ideal=At*e/w;
printf('The ideal volume flow rate sensitivity is %1.4f (m^3/s/h^0.5)\n',S_ideal)
// part b
disp("Actual volume rate sensitivity is given by :")
disp("S_actual=S_ideal/Cd")
S_actual=S_ideal/Cd;
printf('The actual volume rate sensitivity is %1.4f \n',S_actual)
h=.3    //('entering the manometer reading of water height=:')
disp("Actual volume flow rate is given by:")
disp("Q_actual=S_actual*sqrt(h)")
Q_actual=S_actual*sqrt(h);
printf('The actual volume flow rate is %1.3f m^3/s\n',Q_actual)
