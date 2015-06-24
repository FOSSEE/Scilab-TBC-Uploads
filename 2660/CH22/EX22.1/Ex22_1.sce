clc
d1 = 10 // min. dia of cutter in mm
d2 = 60 // max. dia of cutter in mm
v = 30e3 // operating speed in m/min
n1 = v / (%pi * d2) // n_min in rpm
n2 = v / (%pi * d1) // n_max in rpm
phi = (n2 / n1)^(1/5)
spindle_speeds = zeros()
for i=0:5
    spindle_speeds(i+1) = phi^i * n1
end
cutter_dia = v ./ (%pi * spindle_speeds)
clf()
y = [0; v]
plot([0; cutter_dia(1)], y, [0; cutter_dia(2)], y, [0; cutter_dia(3)], y, [0; cutter_dia(4)], y, [0; cutter_dia(5)], y, [0; cutter_dia(6)], y)
xtitle("","cutter diameter mm","cutting velocity, m/min")
// from graph
vmax1 = 36 // m/min
vmin1 = 24.5 // m/min
r1 = vmax1 - vmin1 // Range of cutting speed for 12 mm diameter in m/min
vmax2 = 36.5 // m/min.
vmin2 = 26 // m/min.
r2 = vmax2 - vmin2 // Range of cutting speed for 36 mm diameter in m/min
printf("\n Range of cutting speed for 12 mm diameter = %0.1f m/min.\n Range of cutting speed for 36 mm diameter = %0.1f m/min." , r1 , r2)
