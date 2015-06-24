//Variable declaration:
Fx = -63                                //Force component in X direction (N)
Fy = 63                                 //Force component in Y direction (N)
lbf = 0.22481                           //Pound-forrce in unit newton (lbf)

//Calculations:
Fr = sqrt(Fx**2 + Fy**2)*lbf            //The resultant supporting force (lbf)
u = atand(Fy,Fx)               //Angle between the positive x axis and the direction of the force (degrees)

//Result: 
if ( 0<u & u<90 ) then
    printf ("The supporting force is : %.1f lbf acting at %f ° i.e in the northeast direction.",Fr,u)
elseif (90<u & u<180) then
    printf ("The supporting force is : %.1f lbf acting at %f ° i.e in the northwest direction.",Fr,u)
elseif (180<u & u<270) then
    printf ("The supporting force is : %.1f lbf acting at %f ° i.e in the southwest direction.",Fr,u)
elseif (270<u & u<360) then
    printf ("The supporting force is : %.1f lbf acting at %f ° i.e in the southeast direction.",Fr,u)
end
