//Strength Of Material By G.H.Ryder
//Chapter 1
//Example 8
// To Find the Maximum Stress
l=1;  //lenght of steel rod, Unit in m
N=1000;   //rpm of rod, Unit in rmp
rho=7.8;   //density of the material, Unit in g/cm^3
Omega=%pi*2*N/60;   //Angular Velocity, Unit in rad/sec
//sigma a=-rhox^2*Omega*2/2+c, formula obtain from integration
//At x=l, sigma=0, c=rho*l^2*Omega*2/2
x=0; //x is distance from axis of rod
//Maximum Stress occur at axis, so
sigma=((rho*(Omega^2))/2)*((l^2)-(x^2));   //Stress in bar, Unit in N/mm^2
printf("The maximum Stress %f N/mm^2",sigma)
