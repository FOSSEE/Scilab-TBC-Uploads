clear
//Given
//Entire area - hollow area
l_e = 60.0     //mm - length of the entire area
b_e = 40       //mm - width of the entire area
l_h = 30       //mm - length of the hollow area
b_h = 20       //mm - width of the hollow area
A_e = l_e*b_e  //sq.mm - The entire area
A_h = -l_h*b_h //sq.mm - The hollow area 
A_re = A_e + A_h //sq.mm resultant area
y_e = l_e/2      //  mm com from bottom
y_h = 20+l_h/2   //mm com from bottom
y_com = (A_e*y_e + A_h*y_h)/A_re
//moment of inertia caliculatins - bh3/12 +ad2
I_e = b_e*(l_e**3)/12 + A_e*((y_e-y_com)**2)  //Parallel axis theorem
I_h =  b_h*(l_h**3)/12 - A_h*((y_h-y_com)**2) //Parallel axis theorem
I_total = I_e - I_h
printf("\n The moment of inertia of total system is  %e mm^4",I_total)
