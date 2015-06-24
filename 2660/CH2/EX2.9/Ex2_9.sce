clc
// from figure 2.73
t = 0.8 // thickness in mm
d = 50 // shell diameter in mm
r = 1.6 // radius of bottom corner in mm
h = 50 // height in mm
D = sqrt(d^2 + 4*d*h) // shell blank size in mm
el = 6.4 // extra length required to add in shell blank size
D = D + el // mm
pr = 100*(1-(d/D)) // percentage reduction
ratio = h/d 
n = 2 // number of draws
R1 = 45 // first reduction
D1 = D - R1*D/100 // diameter at first reduction in mm
R2 = 100*(1-(d/D1)) // second reduction 
PR = 4*t // punch radius in mm
PR = ceil(PR)
DR = 6 // die radius in mm
DC1 = 0.87 // die clearance for first draw in mm
DC2 = 0.88 // die clearance for second draw in mm
PD2 = d - 2*t // punch diameter for second draw in mm
DD2 = PD2 + 2*DC2 // Die opening diameter for second draw in mm
PD1 = D1 - 2*t // punch diameter for first draw in mm
DD1 = D1 + 2*DC1 // Die opening diameter for first draw in mm
// Drawing pressure
c = 0.65 // constant
sigma = 427 // N/mm^2
F = %pi*d*t*sigma*(D/d-c) // Drawing pressure in mm
Bhp = 30.8 // blanking holding pressure in kN
pc = 150 // press capacity in kN
printf("\n (i) size of blank = %0.2f mm \n (ii) Percentage reduction = %0.1f percent \n (iii) Number of draws = %d \n (iv) Radius on punch = %d mm \n    Die Radius = %d mm \n (v) Die clearance for first draw = %0.2f mm \n    die clearance for second draw = %0.2f mm" , D , pr,n,PR,DR,DC1,DC2)
printf("\n   Punch diameter for second draw = %0.1f mm \n   Die opening diameter for second draw = %0.2f mm \n   Punch diameter for first draw  = %0.3f mm \n    Die opening diameter for first draw = %0.3f mm\n (vi) Drawing pressure = %0.2f mm \n (vii) Blank holding pressure = %d kN \n (viii)Press capacity = %d kN" , PD2 , DD2 ,PD1 ,DD1 , F/1000 ,Bhp , pc)  
// Answers vary due to round off error
