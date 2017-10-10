clear
//Given   
P_Max  = 10   //N - the maximum distribution in a triangular distribution
L = 3         //mt the total length of force distribution 
L_X = 5       //mt - the horizantal length of the rod
//caliculations 

F_y = P_Max*L*0.5 //N - The force due to triangular distribition 
L_com  = 2*L /3   //mt - the resultant force acting as a result of distribution acting position 
//F_X = 0 forces in x directions
R_A_X = 0         // since there are no forces in X-direction
R_B_X = 0
//M_A = 0 momentum at point a is zero
//F_y*L_com - R_B_Y*L_X = 0
R_B_Y = F_y*L_com/L_X

//M_B= 0 momentum at point b is zero
//- R_A_Y*L_X = F_y*(L_X-L )

R_A_Y = - F_y*L/L_X 
printf("The X,Y components of reaction force at A is %0.3f,%0.3f N",R_A_X,R_A_Y)
printf("\n The X,Y components of reaction force at B is %0.3f,%0.3f N",R_B_X,R_B_Y)
