
clc
//initialization of variables
// At 6 degree centigrade
p1sat = 37 // Vapor pressure of benzene in mm Hg
p = 760 // atmospheric pressure in mm Hg
y1l = 0
y10 = p1sat/p
n1byDcbyl = log((1-y1l)/(1-y10))// because flux n1 = D*c/l * ln(1-y11/1-y10)
n2byDcbyl = y10-y1l // Flux calculated assuming dilute solution as n1 = Dc/l*(y10-y1l)
err1 = ((n1byDcbyl-n2byDcbyl)/n2byDcbyl)*100 // Percentage error
printf("The error in measurement at 6 degree centigrade is %.1f percent",err1)
// At 60 degree centigrade
p1sat = 395 // Vapor pressure of benzene in mm Hg
p = 760 // atmospheric pressure in mm Hg
y1l = 0
y10 = p1sat/p
n1byDcbyl = log((1-y1l)/(1-y10))// because flux n1 = D*c/l * ln(1-y11/1-y10)
n2byDcbyl = y10-y1l // Flux calculated assuming dilute solution as n1 = Dc/l*(y10-y1l)
err1 = ((n1byDcbyl-n2byDcbyl)/n2byDcbyl)*100 // Percentage error
printf("\n The error in measurement at 60 degree centigrade is %.1f percent",err1)


