clc
d = 80 // diameter in mm
h = 250 // height in mm
D = sqrt((d^2+4*d*h))/10 // blank diameter in cm
D1 = 0.5*D // diameter after first draw in cm
// let reduction be 40% in second draw
D2 = D1-0.4*D1 // diameter after scond draw in cm
R = (1 - (d/(10*D2)))*100 // percentage reduction for third draw
l1 = ((D)^2-(D1)^2)/(4*D1) // height of cup after first draw in cm
l2 = ((D)^2-(D2)^2)/(4*D2) // height of cup after first draw in cm
l3 = ((D)^2-(d/10)^2)/(4*d/10) // height of cup after first draw in cm
t = 3 // mm
sigma = 250 // N/mm^2
C = 0.66
F = %pi*d/10*t*sigma*((D*10/d)-C) // drawing force in kN
printf("\n Diameter after first draw = %0.1f \n Diameter after second draw = %0.2f \n Percentage reduction after third draw = %d percent",D1,D2,R)
printf("\n Height of cup after first draw = %0.2f cm\n Height of cup after second draw = %0.2f cm\n Height of cup after third draw = %0.2f cm", l1,l2,l3)
printf("\n Drawing force = %0.3f kN",F/1000)
// Answers vary due to round off error
