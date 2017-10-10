clear
//Given
a = 50          //mm - length of a cube
E =  200        // Gpa - the youngs modulus 
v =  0.25       // no units- poissions ratio 
pressure =  200 // MPa - pressure acting on all sides 
//pressure is a compressive stress 
S_x = -200 // Gpa - The stress in X direction 
S_y = -200 // Gpa - The stress in Y direction
S_z = -200 // Gpa - The stress in Z direction
//Caliculations

e = S_x*(10**-3)/E - v*S_y*(10**-3)/E-v*S_z*(10**-3)/E//mm - considering all three directions 
x = e*a //mmThe change in the dimension between parallel faces
printf("\n The change in the dimension between parallel faces is  %0.3f mm",x)
