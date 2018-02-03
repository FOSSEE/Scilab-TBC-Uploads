clear
//Given
//we will divide this into two equal parts and other part
l = 10.0     // in - The height 
t  = 0.1     // in - The width
b = 5.0      //mm- The width of the above part 
A = t* b     //sq.in - area of part
y_net = l/2  // The com of the system 
y_1 = l      // The position of teh com of part_2
I_1 = t*(l**3)/12          //in^4 The moment of inertia of part 1
I_2 = 2*A*((y_1-y_net)**2) //in^4 The moment of inertia of part 2  
I = I_1 + I_2              //in^4 The moment of inertia 
e = (b**2)*(l**2)*t/(4*I)  //in the formula of channels
l_sc = e - t/2             //in- The shear centre 
printf("\n The shear centre from outside vertical face is  %0.3f in",l_sc )
