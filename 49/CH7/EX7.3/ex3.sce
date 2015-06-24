//CHAPTER 7_ Flow Measurement
//Caption : Gross volume flow rate(venturi)
// Example 3// Page 438
dp=0.02     //('entering the diameter of the line in which water is flowing=:')
dt=0.01    //('entering the diameter of venturi=:')
B=0.5;   // given
// The discharge coefficients remains in the flat portion of the curve for reynolds numbers 10^4 to 10^6 Cd=0.95
u=8.6*10^-4    //('entering the viscosity=:')
Cd=0.95;
Rn_min=10^4;
disp("Minimum flow rate is given by:")
disp("mdot_min=%pi*dp*u*Rn_min/4")
mdot_min=%pi*dp*u*Rn_min/4
g=9.81;
printf('Minimum flow rate at 25 deg cent is %1.3f kg/s\n',mdot_min)
pf=1000   // density of water
At=78.53*10^-6    //('entering the throat area=:')
pm=13.6      //('entering the density of manometer  fluid=:')

//h is the height of mercury column due to flow
disp("To calculate the mercury reading corresponding to minimum flow, using-")
disp("h_min=((mdot_min*sqrt(1-B^4))/((sqrt(2*g*(pm-pf/pf))*pf*At*Cd)))^2;")
h_min=((mdot_min*sqrt(1-B^4))/((sqrt(2*g*(pm-pf/pf))*pf*At*Cd)))^2;
//in mm
H_min=h_min*1000
printf('So the pressure reading observed for the given flow ratre is %1.1f  mm of Hg\n',H_min)
h_max=.25    //('entering the  value of h maximum=:')
m_max=(pf*At*Cd*sqrt(2*g*(pm-pf/pf))*sqrt(h_max))/sqrt(1-B^4);
printf('The maximum flow rate is %1.1f kg/s\n',m_max)






