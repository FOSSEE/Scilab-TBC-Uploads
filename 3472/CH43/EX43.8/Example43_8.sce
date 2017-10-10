// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.8 :
// Page number 782-783
clear ; clc ; close ; // Clear the work space and console

// Given data
V_a = 42.0          // Average speed of train(kmph)
D = 1400.0/1000     // Distance(km)
alpha = 1.7         // Acceleration(km phps)
beta = 3.3          // Retardation(km phps)
r = 50.0            // Tractive resistance(N/tonne)
I = 10.0            // Rotational inertia(%)

// Calculations
T = D*3600/V_a                                       // Time for run(sec)
k = (alpha+beta)/(alpha*beta)                        // Constant
V_m = (T/k)-((T/k)**2-(7200*D/k))**0.5               // Maximum speed over the run(kmph)
t_1 = V_m/alpha                                      // Time of acceleration(sec)
t_3 = V_m/beta                                       // Time(sec)
t_2 = T-(t_1+t_3)                                    // Time(sec)
D_1 = D-(V_a*t_1/(2*3600))                           // Distance(km)
We_W = (100+I)/100                                   // W_e/W
energy = (0.0107*V_m**2*We_W/D)+(0.278*r*D_1/D)      // Energy consumption(Wh per tonne-km)
a = gca() ;
a.thickness = 2                                      // sets thickness of plot
plot([0,t_1,t_1,(t_1+t_2),(t_1+t_2),(t_1+t_2+t_3)],[0,V_m,V_m,V_m,V_m,0])       // Plotting speed-time curve
plot([t_1,t_1],[0,V_m],'r--')
plot([t_1+t_2,t_1+t_2],[0,V_m],'r--')
a.x_label.text = 'Time(seconds)'                     // labels x-axis
a.y_label.text = 'Speed (km/h)'                      // labels y-axis
xtitle("Fig E5.1 . Speed-time curve for the run") 
xset('thickness',2)                                  // sets thickness of axes

// Results
disp("PART IV - EXAMPLE : 5.8 : SOLUTION :-")
printf("\nSpeed-time curve for the run is shown in Figure E5.1")
printf("\nEnergy consumption at the axles of train = %.1f Wh per tonne-km", energy)
