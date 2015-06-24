clear
clc
//to find coefficient of viscocity of castor oil

// GIVEN:
//density of castor oil
rho = 0.96e3//in Kg/m^3
//gauge pressure of pump
delta_p = 950//in Pa
//diameter of pipe
D =  2.6//in cm
//length of pipe
L = 65//in cm
//time interval in which oil is collected
dt = 90//in seconds
//mass of oil collected in dt time interval
dm = 1.23//in Kg
// SOLUTION:
//radius of pipe
R = (D*10^-2)/2//in meters
//mass flux
dm_by_dt = (dm/dt)//in Kg/s
//coefficient of viscocity of castor oil
eta = (rho*%pi*(R^4)*delta_p)/(8*(dm/dt)*(L*10^-2))//in N.s/m^2 //taking Lin meters 

printf ("\n\n Mass flux dm_by_dt = \n\n %.4f Kg/s",dm_by_dt)
printf ("\n\n Coefficient of viscocity of castor oil eta = \n\n %.2f N.s/m^2",eta)
