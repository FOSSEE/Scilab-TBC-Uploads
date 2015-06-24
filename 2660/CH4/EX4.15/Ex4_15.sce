clc
k = 1/4 // return time to cutting ratio
l = 900 + 2*75 // length of stroke in mm
v = 6 // cutting stroke in m/min
f = 2 // feed mm/stroke
w = 600 // breadth in mm
N = (v*1000)/(l*1.25) // r.p.m
N = round(N)
time =  w/(f*N) // min
printf("\n Time required for shaper to complete one cut = %d min" ,time )
