 
CrossSection= 2*(10^4); // capture cross section of Cadmium-113
CrossSection= CrossSection*(10^(-28)); // converting to m^2
Mcadmium= 112; //mean atomic mass of cadmium, u
density= 8.64*(10^3); //density of cadmium sheet used, kg/m^3
 
//Part (a)
 
t= 0.1; //hickness of sheet used, mm
t= t*10^(-3); //converting to m
p= 12; //percent of Cadmium-113 in natural cadmium
u= 1.66*(10^(-27)); //atomic mass unit, kg
n= (p/100)*density/(Mcadmium*u); //number of atoms, atoms/m^3
Fabsorbed= 1- ((%e)^((-n)*(CrossSection)*(t))); //absorbed fraction
disp(Fabsorbed,"The fraction of incident beam absorbed is: ")
 
//Result
// The fraction of incident beam absorbed is:    
//   0.6721891  
 
//Part (b)

t2= (-(log(0.01)))/(n*CrossSection); //required thickness, m
t2= t2*10^(3); //converting to mm
disp(t2,"The thickness required to absorb 99 percent of incident thermal neutrons, in mm, is: ")

//Result 
// The thickness required to absorb 99 percent of incident thermal neutrons, in mm, is:    
//   0.4129018  