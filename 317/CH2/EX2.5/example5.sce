


// Given data
V(1)=0.7;// barrier potential in volts at 25 degree celcius
T(1)=25; // temperature in degree celcius at which vbarrier potential is known
T(2)=100; T(3)=0; // temperature in degree celcius at which barrier potential has to be found

//Calculations
dT(2)=T(2)-T(1);// difference in temperature
dT(3)=T(3)-T(1);// difference in temperature
dV(3)=(-0.002)*dT(3);// barrier potential for silicon decreases by 0.002 volts for each degree celcius rise
dV(2)=(-0.002)*dT(2)// barrier potential for silicon decreases by 0.002 volts for each degree celcius rise 
V(2)=V(1)+dV(2);// to find barrier potential at T(2)
V(3)=V(1)+dV(3);// to find barrier potential at T(3)
disp("Volts",V(2),"Barrier Potential at 100 Degree celcius =")
disp("Volts",V(3),"Barrier Potential at 0 Degree celcius =")

// Result
// barrier potential at 100 degree celcius is 0.55 volts
// barrier potential at 0 degree celcius is 0.75 volts