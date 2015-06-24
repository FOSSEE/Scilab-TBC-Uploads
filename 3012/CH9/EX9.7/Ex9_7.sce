// Given:-
// Part(a)
etareg = 0.8                                                                     // regenerator effectiveness of 80%.
// From example 9.4
h1 = 300.19                                                                      // in kj/kg
h2 = 579.9                                                                       // in kj/kg
h3 = 1515.4                                                                      // in kj/kg
h4 = 808.5                                                                       // in kj/kg

// Calculations
hx = etareg*(h4-h2)+h2                                                           // in kj/kg
eta = ((h3-h4)- (h2-h1))/(h3-hx)                                                 // thermal efficiency
// Result
printf('The thermal efficiency is:  %.2f',eta)

// Part(b)

etareg = linspace(0,0.8,50)
for i = 1:50
    x(i) = (etareg(i)*(h4-h2))+h2   
    eta(i) = ((h3-h4)- (h2-h1))/(h3-x(i))
end

plot(etareg,eta)
xlabel('Regenerator effectiveness')
ylabel('Thermal efficiency')
