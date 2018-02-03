//Determine radius of gyration
//refer fig.10.23
//composite body may be divided into 
//1.a solid block of size (80*120*100 mm) and 2.two semicircular grooves each of 40 mm radius and 80 mm length
//Let's assign random value to rho
rho=1
//Ig=1.029*10^8*rho
//Ix2=Ig+M2*d'^2
Ixx=10.0816*(10^8)*rho
M=557876.14*rho  //units
k=sqrt(Ixx/M)  //mm
printf("\nk=%.2f mm",k)
