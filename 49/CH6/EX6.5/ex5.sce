//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : Pressure Gage
// Example 5 // Page 347
p_max=10*10^6    //('Enter the maximum differential pressure')
fn=20000  //(' Enter the frequency')
E=200*10^9;   // modulus of elasticity
v=0.3;   // poissons ratio
p=7800    // density of steel
disp("Let t/R be represented by TR ")
TR=((3*p_max*(1-v^2))/(4*E))^(1/4)
// we know R^2/t = r2t=10.21(Et^2/12(1-v^2)p)^0.5/R^2     using it , we have
r2t=(10.21*sqrt(E/(12*(1-v^2)*p)))/fn
R=TR*r2t;
printf('value of R is %fd m\n', R)

t=R*TR;
printf(' value of t is %fd m \n',t)

eo=8.85*10^-12
er=1.0006;
d=.001   //('Enter the distance between the plates of capacitor=:')
S=-(eo*er*%pi*R^2)/d^2;
// variation of capacitor distance with respect to pressure is given by
q=(3*R^4*(1-v^2))/(16*E*t^3)
// total sensitivity of the pressure transducer is given by
sensitivity=S*q*10^18;
printf(' So the total sensitivity of the pressure transducer is given by %1.2f pF/MPa\n',sensitivity)