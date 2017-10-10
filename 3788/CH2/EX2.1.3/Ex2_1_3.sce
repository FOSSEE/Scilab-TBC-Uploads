//Example 2.1.3
//Elliptical Orbit

//Variable Declaration
re=6378.14
hp=1000
ha=4000
u=3.98600*((10)^5)

//Calculation
a=(2*re+hp+ha)/2
T=sqrt((4*(%pi^2)*(a^3)/u))

e=1-((re+hp)/a)               //Eccentricity of orbit

//Result
printf("The period of  orbit is : %f seconds",T)
disp(e,'Eccentricity of orbit')

