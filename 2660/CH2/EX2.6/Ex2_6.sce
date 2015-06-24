clc
D = 25.4 // outside diameter in mm 
d = 12.7 // internal diameter in mm
t = 1.5 // thickness in mm
tau = 280 // ultimate shearing strength in N/mm^2
F = %pi*(D + d)*t*tau // total cutting force in N
F_s = %pi*D*t*tau // cutting force when punches are staggered in N
k = 0.6 // penetration
i = 1 // shear of punch in mm
F_p = (t*k*F)/(k*t +i)// cutting force when both punches act together in N 
printf ("\n shear force when both punch act at same time and no shear is applied = %0.2f kN" , F/1000)
printf("\n cutting force when punches are staggered = %0.1f kN", F_s/1000)
printf("\n cutting force when there is penetration and shear on punch = %0.1f kN",F_p/1000)
