clc
D = 300 // diameter in mm
r = 45 // rev/min.
d = 2 // depth of cut in mm
f = 0.3 // feed in mm/rev
fc = 1850 // cutting force in N
ff = 450 // feed force in N
V = 2.5*10^6 // metal removed in mm
v = (%pi*D*r)/(60*1000) // cutting velocity in m/s
pc = fc*v/1000 // cutting power in kW
fv = f*r/60*1000 // feed velocity in m/s
fp = fv*ff // feed power in W
mrr = d*f*v*60*1000 // mm^3/min.
ce = pc*1000*60/mrr // specific cutting energy in W*s/mm^2
E = ce*V/(3600*1000) // energy consumed
printf("\n Power consumption = %0.2f W\n Specific cutting energy = %0.2f W*s/mm^3\n Energy consumed = %0.3f kWh" ,pc,ce,E)
// 'Answers vary due to round off error'
