//Rods welded
//refer fig. 20.9 (a) and (b)
//Mass moment of inertia of AB about axis of rotation
AB=((200*1.2*1.2)/(12*9.81))+((200*0.6*0.6)/(9.81))
//Mass moment of inertia of rod CD about A
CD=((100*0.6*0.6)/(12*9.81))+((100*1.2*1.2)/(9.81))
//Total mass moment of the system about A
I=9.786+147.0
//Let alpha be the instantaneous angular acceleration
//Kinetic equation for motion gives
alpha=(300*0.75)/(156.786)  //rad/sec
//Writing the dynamic equilibrium condition
VA=200+100  //N
HA=300-((200*0.6*alpha)/(9.81))-((100*1.2*alpha)/(9.81))  //N
printf("\nVA=%.3f N\nHA=%.3f N",VA,HA)

