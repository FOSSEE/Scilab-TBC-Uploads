//Car going around a curve
//refer fig. 19.9
v=26.667  //m/sec
F=20*(((26.667^2)/(9.81*60))-sind(30))  //kN
//Taking moment about point of contact of outer wheel with road surface, we get
R1=20*(((0.8*sind(30))/(1.6))+((cosd(30))/(2))+((26.667^2)/(9.81*60))*(((sind(30))/(2))-((0.8*cosd(30))/(1.6))))  //kN
//Taking summation of forces normal to road surface
R2=(20*((cosd(30))+(((sind(30))*26.667^2)/(9.81*60))))-9.238  //kN
printf("\nR1=%.3f kN\nR2=%.3f kN",R1,R2)
