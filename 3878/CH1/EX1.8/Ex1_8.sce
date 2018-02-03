clear
// Variable declaration
t=225// The wall thickness in mm
k=0.60// Thermal conductivity in W/(m K)
L=10// Length in m
h=3// Height in m
delT=25// The temperature difference between the inside and outside faces in K

// Calculation
Q_t=(L*h*k*delT*1000)/(t)// The rate of heat conduction in W
printf("\n The rate of heat conduction,Q_t= %0.0f ",Q_t)
