// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 4: ILLUMINATION

// EXAMPLE : 4.6 :
// Page number 754-755
clear ; clc ; close ; // Clear the work space and console

// Given data
cp_0 = 500.0      // Candle power
theta_0 = 0.0     // θ(°)
cp_1 = 560.0      // Candle power
theta_1 = 10.0    // θ(°)
cp_2 = 600.0      // Candle power
theta_2 = 20.0    // θ(°)
cp_3 = 520.0      // Candle power
theta_3 = 30.0    // θ(°)
cp_4 = 400.0      // Candle power
theta_4 = 40.0    // θ(°)
cp_5 = 300.0      // Candle power
theta_5 = 50.0    // θ(°)
cp_6 = 150.0      // Candle power
theta_6 = 60.0    // θ(°)
cp_7 = 50.0       // Candle power
theta_7 = 70.0    // θ(°)
h = 6.0           // Height of lamp(m)

// Calculations
I_0 = cp_0/h**2*(cosd(theta_0))**3    // Illumination(lux)
l_0 = h*tand(theta_0)                 // Distance(m)
I_1 = cp_1/h**2*(cosd(theta_1))**3    // Illumination(lux)
l_1 = h*tand(theta_1)                 // Distance(m)
I_2 = cp_2/h**2*(cosd(theta_2))**3    // Illumination(lux)
l_2 = h*tand(theta_2)                 // Distance(m)
I_3 = cp_3/h**2*(cosd(theta_3))**3    // Illumination(lux)
l_3 = h*tand(theta_3)                 // Distance(m)
I_4 = cp_4/h**2*(cosd(theta_4))**3    // Illumination(lux)
l_4 = h*tand(theta_4)                 // Distance(m)
I_5 = cp_5/h**2*(cosd(theta_5))**3    // Illumination(lux)
l_5 = h*tand(theta_5)                 // Distance(m)
I_6 = cp_6/h**2*(cosd(theta_6))**3    // Illumination(lux)
l_6 = h*tand(theta_6)                 // Distance(m)
I_7 = cp_7/h**2*(cosd(theta_7))**3    // Illumination(lux)
l_7 = h*tand(theta_7)                 // Distance(m)
l = [-l_7,-l_6,-l_5,-l_4,-l_3,-l_2,-l_1,l_0,l_0,l_1,l_2,l_3,l_4,l_5,l_6,l_7]
I = [I_7,I_6,I_5,I_4,I_3,I_2,I_1,I_0,I_0,I_1,I_2,I_3,I_4,I_5,I_6,I_7]
a = gca() ;
a.thickness = 2                                       // sets thickness of plot
plot(l,I,'ro-')                                       // Plot of illumination curve
x = [0,0,0,0,0,0]
y = [0,5,10,11,14,16]
plot(x,y)                                             // Plot of straight line
a.x_label.text = 'Distance(metres)'                   // labels x-axis
a.y_label.text = 'Illumination(flux)'                 // labels y-axis
xtitle("Fig E4.4 . Illumination on a horizontal line below the lamp") 
xset('thickness',2)                                   // sets thickness of axes

// Results
disp("PART IV - EXAMPLE : 4.6 : SOLUTION :-")
printf("\nThe curve showing illumination on a horizontal line below lamp is represented in Figure E4.4")
