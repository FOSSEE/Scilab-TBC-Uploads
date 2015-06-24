//Finding of Viscosity
//Given
dy=0.025*10^-3;            //distance in meter
du=0.5;                    //velocity  in m/s 
tau=1.471;                 //shear stress in N/m^2
//To Find
mu=tau*dy/du;              //viscosity in Ns/m^2 
mu1=mu*10;                 // Viscosity in poise
disp("viscosity ="+string(mu)+" in Ns/m^2");
disp("Viscosity ="+string(mu1)+" in poise")  
