clear
//Given 
L_ab = 0.4  //mt The total length of the rod
M = 200     //N_m - the moment acting on rod
l_1 = 0.1   //mt -moment acting point the distance from 'a'
R_1 = 100   //N - The Force acting 
l_2 = 0.2   //mt -R_1 acting point the distance from 'a'
R_2 = 160   //N The Force acting 
l_3 = 0.3   //mt -R_2 acting point the distance from 'a'
//calculations

//F_X = 0 forces in x directions 
R_A_X = 0   // since there are no forces in X-direction 
R_B_X = 0
//M_A = 0 momentum at point a is zero

// M + R_1*l_2 + R_2*l_3 = R_B*L_ab *the moment for a force is FxL
R_B_Y =  (M + R_1*l_2 + R_2*l_3)/L_ab

//M_B= 0 momentum at point b is zero
// R_A_Y*L_ab + M - R_1*l_2 - R_2*0.1 = 0

R_A_Y = -(M - R_1*l_2 - R_2*0.1)/L_ab
printf("The X,Y components of reaction force at A is %0.3f,%0.3f N",R_A_X,R_A_Y)
printf("\n The X,Y components of reaction force at B is %0.3f,%0.3f N",R_B_X,R_B_Y)
