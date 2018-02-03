//A plane
//initial velocity
u=200  //m/sec
//angle of projection 
alpha=30  //degree
//Inclination of the plane=atand(5/12) degree
//(a) When the shot is fired up the plane
abeta=22.62  //degree
aRange=((200^2)/(9.81*(cosd(22.62))^2))*((sind(2*30-22.62))-(sind(22.62)))  //m
//(b) When the shot is fired down the plane
bbeta=-22.62  //degree
bRange=((200*200)/(9.81*(cosd(22.62))^2))*(sind(82.62)+sind(22.62))  //m
printf("\nWhen the shot is fired up the plane\nRange=%.2f m\nWhen the shot is fired down the plane\nRange=%.2f m",aRange,bRange)
