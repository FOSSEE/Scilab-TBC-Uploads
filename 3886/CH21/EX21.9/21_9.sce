//Compound pendulum
//refer fig. 21.8
//Length of uniform rod
l=0.6  //m
//Radius of uniform disc
r=0.3  //m
//Mass moment of inertia about centre of suspention
Iz=((25*0.6^2)/(9.81*12))+((25*0.6^2)/(9.81*2*2))+((40*0.15^2)/(2*9.81))+((40*(0.6+0.15)^2)/(9.81))  //units
M=((25)/(9.81))+((40)/(9.81))
//Kzz^2=0.3992
//Distance of centre of gravity of compound pendulum from centre of suspension
r=(25*0.3+40*0.75)/(25+40)  //m
T=2*%pi*sqrt((0.3992)/(0.5769))  //sec
//equivalent length
Le=(0.3992/0.5769)  //m
printf("\T=%.3f sec\nLe=%.3f m",T,Le)
