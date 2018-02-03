//Determine Resultant Force
//From given data
T=1200  //N
F=100  //N
N=500  //N
W=1000  //N
theta=60  //degree
//Taking co-ordinate system parallel and perpendicular to plane as x and y axis and resolving the forces
Fx=T-F-W*sind(theta)  //N
Fy=N-W*cosd(theta)  //N
R=sqrt(Fx^2+Fy^2)
printf("The resultant has magnitude R=%.0f N directed up the plane",R)
