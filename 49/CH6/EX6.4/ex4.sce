//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : Design of Pressure Transducers
// Example 4 // Page 338
p_max=10*10^6    //('Enter the capacity of the transducer=:')
D=.05   //('Enter the diameter of diaphragm=:')
R=D/2;
v=0.3;   // poissons ratio
E=200*10^9;
// We know that
// y=3pR^4(1-v^2)/16t^3E
// if y<t/4, the non linearity is restricted to 0.3%
//So t is given by
t=(3*p_max*R^4*(1-v^2)/(4*E))^(1/4)
disp(t)
printf('thickness comes out to be %fd m\n',t);
Sr_max=(3*p_max*R^2)/(4*t^2)
printf('So the max radial stress is %fd Pa\n',Sr_max)
printf('The given fatigue strength is 500MPa\n' )
if Sr_max > 500*10^6 then
      disp("The diaphragm must be redesigned");
      t1=((3*p_max*R^2)/(4*500*10^6))^(1/2);
printf('The required thickness is %fd m\n',t1)
      
else 
    disp("The design is OK");
end
// Let the voltage ratio be represented by Err
Err=(820*p_max*R^2*(1-v^2))/(E*(t1^2))
printf('The voltage ratio is %fd\n', Err)
// For maximum power dissipation
PT=1
RT=120
Ei=2*(PT*RT)^(1/2);
disp("Let the sensitivity of the transducer be represented by ss")
ss=(820*R^2*(1-v^2)*Ei)/(E*t1^2)
printf('sensitivity is %fd\n', ss)
// Part c
S_LVDT=(ss*16*t^3*E)/(3*R^4*(1-v^2)*Ei)
printf('SENSITIVITY OF LVDT IS %fd \n',S_LVDT)

