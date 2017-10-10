clc
t = poly(0,'t')
e = (0.2*t)-(5e-04*t^2) // e.m.f. as a function of temperature in mV
e0 = horner(e, 0) // e.m.f. at t = 0 degree
e100 = horner(e, 100) // e.m.f. at t = 100 degree
e50 = horner(e, 50) // e.m.f. at t = 50 degree
r = (100/e100)*e50 // Reading of thermocouple at t = 50degree
printf("\n Example 2.2")
printf("\n Reading of thermocouple at t = 50 degree Celsius will be %f degree Celsius.",r)
//The answers vary due to round off error

