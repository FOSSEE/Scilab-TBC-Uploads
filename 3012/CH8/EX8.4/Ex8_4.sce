// Given :-
// Part (a)
etat = 0.85                                                                      // given efficiency
// From the solution to Example 8.3, the following specific enthalpy values are known, in kJ/kg
h1 = 3348.4
h2s = 2741.8
h3 = 3353.3
h4s = 2428.5
h5 = 173.88
h6 = 181.94


// Calculations
h2 = h1 - etat*(h1 - h2s)                                                 // The specific enthalpy at the exit of the first-stage turbine in kj/kg
h4 = h3 - etat*(h3-h4s)                                                   // The specific enthalpy at the exit of the second-stage turbine in kj/kg
eta = ((h1-h2)+(h3-h4)-(h6-h5))/((h1-h6)+(h3-h2)) 

// Result
printf( ' The thermal efficiency is:  %f',eta)

// Part (b)
x = linspace(0.85,1,50)
for i =1:50
    h2(i) = h1 - x(i)*(h1 - h2s)                                      // The specific enthalpy at the exit of the first-stage turbine in kj/kg
    h4(i) = h3 - x(i)*(h3-h4s)                                        // The specific enthalpy at the exit of the second-stage turbine in kj/kg
    y(i)  = ((h1-h2(i))+(h3-h4(i))-(h6-h5))/((h1-h6)+(h3-h2(i))) 
end

plot(x,y)
xlabel('isentropic turbine efficiency')
ylabel('cycle thermal efficiency')
