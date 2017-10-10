clear
//Given 
l_ad = 1600 //mm - The total length of the beam 
l_ab = 600  //mm - The length of AB
l_bc = 600  //mm - The length of BC
e_1 = 0.24  //mm - deflection 
e_2 = 0.48  //mm - deflection
E = 35      //Gpa
//Caliculation 

A_afe = -(l_ab+l_bc)*e_1*(10**-3)/(2*E)
A_afe = -(l_ab)*e_2*(10**-3)/(4*E)
y_1_b = A_afe + A_afe //rad the slope at the tip  B
x_1 = 1200            //com from B
x_2 = 800             //com from B
y_b = A_afe*x_1 + A_afe*x_2 //mm The maximum deflection at tip B
printf("\n The maximum deflection at tip B %0.2f mm",y_b)
printf("\n The slope at the tip  B %0.2f radians",y_1_b)
