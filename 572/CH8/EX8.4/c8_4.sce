//(8.4)  Reconsider the reheat cycle of Example 8.3, but include in the analysis that each turbine stage has the same isentropic efficiency. (a) If etat =   85%, determine the thermal efficiency. (b) Plot the thermal efficiency versus turbine stage efficiency ranging from 85 to 100%.


//solution

//part (a)
etat = .85                                                                      //given efficiency
//From the solution to Example 8.3, the following specific enthalpy values are known, in kJ/kg
h1 = 3348.4
h2s = 2741.8
h3 = 3353.3
h4s = 2428.5
h5 = 173.88
h6 = 181.94

h2 = h1 - etat*(h1 - h2s)                                                       //The specific enthalpy at the exit of the first-stage turbine in kj/kg
h4 = h3 - etat*(h3-h4s)                                                         //The specific enthalpy at the exit of the second-stage turbine in kj/kg

eta = ((h1-h2)+(h3-h4)-(h6-h5))/((h1-h6)+(h3-h2)) 
printf('the thermal efficiency is:  %f',eta)


//part (b)
x = linspace(.85,1,50);
for i = 1: 50
    h2(1,i) = h1 - x(1,i)*(h1 - h2s)                                                       //The specific enthalpy at the exit of the first-stage turbine in kj/kg
h4(1,i) = h3 - x(1,i)*(h3-h4s)                                                         //The specific enthalpy at the exit of the second-stage turbine in kj/kg
end

for i = 1:50
    y(1,i) = ((h1-h2(1,i))+(h3-h4(1,i))-(h6-h5))/((h1-h6)+(h3-h2(1,i))) 
end
plot2d(x,y)
xtitle("","isentropic turbine efficiency","cycle thermal efficiency")