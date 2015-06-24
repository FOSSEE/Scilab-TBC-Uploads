
//Variable Declaration
aE=6378.141     //Earth's equitorial radius(km)
e=0.002         //Eccentricity
p=12            //period from perigee to perigee (hours)
K1=66063.1704  //Constant (km^2)
u=3.986005*(10**14)         //Earth's Gravitational constant(m^3/sec^2)


//Calculation
n=(2*%pi)/(12*60*60)            //Mean Motion(rad/sec)
anp=((u/n**2)**(0.3333))/1000      //Radius of the orbit by kepler's 3rd law(km)
k2=(1-e**2)**1.5

function [y]=f(a)
    y=(n-((u/a**3)**0.5)*(1+K1/a**2*k2))
endfunction
a=fsolve(2,f)
a=a/1000  //Converting a into km

//Result

printf("The nonperturbed value of semimajor axis is %.2f km",anp)
printf("\nThe perturbed value of semimajor axis is %.2f km",a)

