//(9.7)  A regenerator is incorporated in the cycle of Example 9.4. (a) Determine the thermal efficiency for a regenerator effectiveness of 80%. (b) Plot the thermal efficiency versus regenerator effectiveness ranging from 0 to 80%.

//solution


//part(a)
etareg = .8                                                                     //regenerator effectiveness of 80%.
//from example 9.4
h1 = 300.19                                                                     //in kj/kg
h2 = 579.9                                                                      //in kj/kg
h3 = 1515.4                                                                     //in kj/kg
h4 = 808.5                                                                      //in kj/kg

hx = etareg*(h4-h2)+h2                                                          //in kj/kg
eta = ((h3-h4)- (h2-h1))/(h3-hx)                                                //thermal efficiency
printf('the thermal efficiency is:  %f',eta)

//part(b)
etareg = linspace(0,.8,50)
for i= 1:50
 hx(1,i) = etareg(1,i)*(h4-h2)+h2   
end
for i = 1:50
    eta(1,i) = ((h3-h4)- (h2-h1))/(h3-hx(1,i))
end
plot(etareg,eta)
xtitle("","Regenerator effectiveness","Thermal efficiency")