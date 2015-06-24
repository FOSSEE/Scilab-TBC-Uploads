clear all
clc()

// To find out heat loss through conduction through a furnace
k=0.8                     // Avg. thermal conductivity in Btu/hr-ft-degF
T1=400                    // Inner surface temperature of furnace in degF 
T2=100                    // Outer surface temperature of furnace in degF
a=3                       // Length of furnace in ft
b=4                       // Breadth of furnace in ft
c=2.5                     // Height of furnace in ft
Aa=2*a*b                  // Area of surface A in ft^2
Ab=2*b*c                  // Area of surface A in ft^2
Ac=2*a*c                  // Area of surface A in ft^2
x=4.5/12                  // Thickness of insulation in ft
t=24                      // Time elapsed in hr
M=4                       // Number of edges
N=8                       // Number of corners

S=Aa/x+Ab/x+Ac/x+0.54*(a+b+c)*M+0.15*x*N       // Shape factor
qo=S*k*(T1-T2)                                 // Heat flow per hour
q=qo*t                                         // Heat loss in 24 hr

printf("The heat loss in 24 hr is %d Btu",q)