
M= 4.9; //Linear attenuation coefficient for gamma ray in water, m^(-1)
I= 2.0; //Original intensity of gamma ray, MeV
 
//Part (a)

x= 10; //distance travelled under water, cm
x= x/100; //converting to m
Irel= %e^(-(M*x)); //Relative intensity
disp(Irel,"Relative intensity of the beam is: ")
 
//Result
// Relative intensity of the beam is:    
//  0.6126264  
 
//Part(b)
 
Ip= I/100; //Present intensity, 1 percent of Original, MeV
x2= log(I/Ip)/M; //distance travelled, m
disp(x2,"The distance travelled by the beam is: ")
 
//Result
// The distance travelled by the beam is:    
//  0.9398307  