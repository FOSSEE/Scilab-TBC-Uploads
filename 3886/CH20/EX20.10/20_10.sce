//welded cylinder
//refer fig. 20.8 (a) and (b)
//Mass moment of inertia of the bar about A
IBA=((200)/(2*9.81))+((200*0.5^2)/(9.81))  
//Moment of inertia of the cylinder about A
ICA=((500*0.2*0.2)/(2*9.81))+((500*1.2*1.2)/(9.81))
//mass moment of inertia of the system about A
I=6.7958+74.41  
//Rotational moment about A
Mt=200*0.5+500*1.2  //N-m
//Equating it to I*alpha
alpha=((700)/(81.2097))  //rad/sec
//Instantaneous acceleration of rod AB is vertical with magnitude
Iaccnrod=0.5*8.6197  //m/sec
//Instantaneous acceleration of cylinder is vertical with magnitude
Iaccncylinder=1.2*8.6197  //m/sec
//Applying D'Alembert's dynamic equilibrium equation to the system of forces
RA=200+500-((200*4.3100)/(9.81))-((500*10.344)/(9.81))  //N
printf("\nalpha=%.3f rad/sec\nRA=%.3f N",alpha,RA)
