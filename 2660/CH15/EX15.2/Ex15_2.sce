clc
l = 35 // length of bore in mm
v = 0.15 // cutting speed in m/s
t1 = 0.01 // upper limit in mm
t2 = 0.05 // upper limit in mm
D = 32.25 // finished broach in mm
D1 = 32.25+t2 // mm
d = 32.75 // finish diameter in mm
d1 = 32.75 + t1 //finish diameter of hole in mm
s = 0.05 // mm
B = 1.30 // blunt broach factor
c = 45 // specific cutting force in N/mm^2
n = 3 // number of teeth cutting at a time
F = n*%pi*d1*s*c*B // force needed for broaching in N
bp = F*v/1000 // Broaching power in kw
// broach design
p = 1.75*sqrt(l) // pitch in mm
theta = 10 // face angle in degree
alha1 = 1.5 // relief angle for roughing in degree
alha2 = 1.0 // relief angle for finishing in degree
w = 0.3*p // width of land in mm
h = 0.4*p // depth of cutting teeth in mm
r = 0.3*p // tooth fillet radius in mm
T = (d1-D1)/2 // mm
n = T/s // number of cutting teeth
n = round(n)
l = (n+7)*p //length of toothed portion of broach in mm
printf("\n (i)Broaching power = %0.4f kW",bp)
disp("(ii) Broach Design")
printf(" (a) Pitch diameter = %0.2fmm\n (b) width of land = %0.2f mm \n    depth of cutting teeth = %0.2f mm\n    Tooth fillet radius= %0.2f mm", p,w,h,r)
printf("\n (c) Length of toothed portion of broach = %d mm", l)
// 'Answers vary due to round off error'
