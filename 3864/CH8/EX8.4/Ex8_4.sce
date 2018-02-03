clear
//
//

//Initilization of Variables

d=2500 //mm //Diameter of riveted boiler
P=1 //N/mm**2 //Pressure
rho1=0.7 //Percent efficiency
rho2=0.4 //Circumferential joints
sigma=150 //N/mm**2 //Permissible stress

//Calculations

//Equating Bursting force to longitudinal joint strength ,we get
//p*d*L=rho1*2*t*L*sigma
//After rearranging and further simplifying we get
t=P*d*(2*sigma*rho1)**-1 //mm

//Considering Longitudinal force
//%pi*d**2*4**-1*P=rho2*%pi*d*t*sigma
//After rearranging and further simplifying we get
t2=P*d*(4*sigma*rho2)**-1

//Result
printf("\n Thickness of plate required is %0.2f  mm",t)
