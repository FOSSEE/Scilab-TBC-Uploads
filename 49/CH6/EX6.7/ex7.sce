//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : McLeod Gage
// Example 7 // Page 362
disp("Vb=150*10^-6")
disp("d=1.5*10^-3")
disp("a=%pi*d^2/4;")
Vb=150*10^-6   //('enter the volume of the Mc Leod gage=:')
d=1.5*10^-3   //('enter the diameter of capillary=:')
a=%pi*d^2/4;
p=40*10^-6    //('enter the pressure for which the gage reading is to be noted=:')
//y=(-p*area_cap+sqrt((p*area_cap)^2-4*p*area_cap*Vb))/(2*area_cap);
l=p*a;

y=(sqrt(l^2+(4*l*Vb))-l)/(2*a)
printf('The gage reading comes out to be %fd mof Hg\n',y)
