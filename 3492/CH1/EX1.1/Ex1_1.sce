clc
//Chapter1
//Ex_1.1
//Given
A=8*10^-77 // in J m^6
B=1.12*10^-133 // in J m^12
//lennard-Jones 6-12 potential Energy (PE)curve is E(r)=-A*r^-6+B*r^-12
//For bonding to occur PE should be minimum, hence differentiating the PE equation and setting it to Zero at r=ro we get
ro=(2*B/A)^(1/6)
disp(ro,"Bond length in meters is")
E_bond= -A*ro^-6+(B*ro^-12)//in J
E_bond=abs(E_bond/(1.6*10^-19))
disp(E_bond,"Bond Energy for solid argon in ev is")
