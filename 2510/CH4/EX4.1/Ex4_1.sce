//Variable declaration:
Vx_in = 420                     //Entry Velocity in X direction (m/s)
Vx_out = 0                      //Exit Velocity in X direction (m/s)
Vy_in = 0                       //Entry Velocity in Y direction (m/s)
Vy_out = 420                    //Exit Velocity in Y direction (m/s)
m =  0.15                       //Rate of water entrained by the steam (kg/s)
lb = 1.0/4.46                   //Pound force in a newton force

//Calculations:
Mx_out = m*Vx_out               //Rate of change of momentum at entry in x-direction (kg.m)
Mx_in = m*Vx_in                 //Rate of change of momentum at exit in x-direction  (kg.m)
My_out = m*Vy_out               //Rate of change of momentum at entry in y-direction (kg.m)
My_in = m*Vy_in                 //Rate of change of momentum at exit in y-direction  (kg.m)
Fxgc = (Mx_out - Mx_in)*lb      //Force in X direction (lbf)
Fygc = (My_out - My_in)*lb      //Force in X direction (lbf)

//Results:
if Fxgc < 1 then
    printf ("The x-direction supporting force acting on the 90° elbow is : %.1f lbf acting toward the left.",-Fxgc)
else
    printf ("The x-direction supporting force acting on the 90° elbow is : %.1f lbf acting toward the right.",Fxgc)
end
    
if Fygc < 1 then
    printf ("The y-direction supporting force acting on the 90° elbow is : %.1f lbf acting downwards.",-Fygc)
else
    printf ("The y-direction supporting force acting on the 90° elbow is : %.1f lbf acting upwards.",Fygc)
end
