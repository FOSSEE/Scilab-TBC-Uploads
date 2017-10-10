clear
//Given 
//
b = 40.0    //mm - The width of the beam crossection
h = 300.0   //mm - The length of the beam crossection 
V = 40.0    //KN - The shear stress in teh crossection
M = 10.0    //KN-m - The bending moment on K----K crossection 
c = h/2     //mm -The position at which maximum stress occurs on the crossection
I = b*(h**3)/12                //mmm4 - the moment of inertia 
//Caliculations 

stress_max_1 = M*c*(10**6)/I   //The maximum stress occurs at the end
stress_max_2 = -M*c*(10**6)/I  //The maximum stress occurs at the end
y = 140                        //mm The point of interest, the distance of element from com
n = y/(c)                      // The ratio of the distances from nuetral axis to the elements
stress_L_1 = n*stress_max_1    //The normal stress on elements L--L
stress_L_2 = -n*stress_max_1   //The normal stress on elements L--L
x = 10       //mm The length of the element
A = b*x      //mm3 The area of the element 
y_1 = y+x/2  // the com of element from com of whole system
stress_xy = V*A*y_1*(10**3)/(I*b) //MPa - The shear stress on the element 
//stresses acting in plane 30 degrees 
o = 60 //degrees - the plane angle
stress_theta = stress_L_1/2 +  stress_L_1*(cos((%pi/180)*(o)))/2 - stress_xy*(sin((%pi/180)*(o))) //MPa by direct application of equations
stress_shear =  -stress_L_1*(sin((%pi/180)*(o)))/2 - stress_xy*(cos((%pi/180)*(o)))               //MPa Shear stress
  
printf("\n a)The principle stresses are  %0.2f MPa %0.2f MPa",stress_max_1,stress_max_2)
printf("\n b)The stresses on inclines plane  %0.2f MPa noraml,  %0.2f MPa shear ",stress_theta,stress_shear)
