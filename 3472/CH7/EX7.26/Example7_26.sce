// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.26 :
// Page number 85-86
clear ; clc ; close ; // Clear the work space and console

// Given data
Q1 = 1100.0            // Discharge in descending order(m^3/sec)
Q2 = 1000.0            // Discharge(m^3/sec)
Q3 = 900.0             // Discharge(m^3/sec)
Q4 = 800.0             // Discharge(m^3/sec)
Q5 = 700.0             // Discharge(m^3/sec)
Q6 = 600.0             // Discharge(m^3/sec)
Q7 = 500.0             // Discharge(m^3/sec)
Q8 = 400.0             // Discharge(m^3/sec)
Q9 = 300.0             // Discharge(m^3/sec)
Q10 = 200.0            // Discharge(m^3/sec)
Q11 = 100.0            // Discharge(m^3/sec)
no_week = 13.0         // Total weeks of discharge
h = 200.0              // Head of installation(m)
n_overall = 0.88       // Overall efficiency of turbine and generator
w = 1000.0             // Density of water(kg/m^3)

// Calculations
n1 = 1.0                        // Number of weeks for 1100 discharge(m^3/sec)
n2 = 2.0                        // Number of weeks for 1000 and above discharge(m^3/sec)
n3 = 3.0                        // Number of weeks for 900 and above discharge(m^3/sec)
n4 = 4.0                        // Number of weeks for 800 and above discharge(m^3/sec)
n5 = 6.0                        // Number of weeks for 700 and above discharge(m^3/sec)
n6 = 7.0                        // Number of weeks for 600 and above discharge(m^3/sec)
n7 = 9.0                        // Number of weeks for 500 and above discharge(m^3/sec)
n8 = 10.0                       // Number of weeks for 400 and above discharge(m^3/sec)
n9 = 11.0                       // Number of weeks for 300 and above discharge(m^3/sec)
n10 = 12.0                      // Number of weeks for 200 and above discharge(m^3/sec)
n11 = 13.0                      // Number of weeks for 100 and above discharge(m^3/sec)
P1 = n1/no_week*100             // Percentage of total period for n1
P2 = n2/no_week*100             // Percentage of total period for n2
P3 = n3/no_week*100             // Percentage of total period for n3
P4 = n4/no_week*100             // Percentage of total period for n4
P5 = n5/no_week*100             // Percentage of total period for n5
P6 = n6/no_week*100             // Percentage of total period for n6
P7 = n7/no_week*100             // Percentage of total period for n7
P8 = n8/no_week*100             // Percentage of total period for n8
P9 = n9/no_week*100             // Percentage of total period for n9
P10 = n10/no_week*100           // Percentage of total period for n10
P11 = n11/no_week*100           // Percentage of total period for n11
P = [0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11]
Q = [Q1,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11]                            // Plotting flow duration curve
a = gca() ;
a.thickness = 2                                    // sets thickness of plot
plot(P,Q,'ro-')
a.x_label.text = 'Percentage of time'                                  // labels x-axis
a.y_label.text = 'Q(m^3/sec)'                                          // labels y-axis
xtitle("Fig E7.5 . Plot of Flow-duration curve") 
xset('thickness',2)                                                    // sets thickness of axes
xgrid(4)
Q_1 = 1.0                               // Discharge(m^3/sec)
P_1 = 0.736/75*w*Q_1*h*n_overall        // Power developed for Q_1(kW)
Q_av = 600.0                            // Average discharge(m^3/sec). Obtained from Example 1.7.25
P_av = P_1*Q_av/1000.0                  // Average power developed(MW)
Q_max = Q1                              // Maximum discharge(m^3/sec)
P_max = P_1*Q_max/1000.0                // Maximum power developed(MW)
Q_10 = 1070.0                           // Discharge for 10% of time(m^3/sec). Value is obtained from graph
P_10 = P_1*Q_10/1000.0                  // Installed capacity(MW)

// Results
disp("PART I - EXAMPLE : 7.26 : SOLUTION :-")
printf("\nFlow-duration curve is shown in the Figure E7.5")
printf("\nMaximum power developed = %.f MW", P_max)
printf("\nAverage power developed = %.f MW", P_av)
printf("\nCapacity of proposed station = %.f MW \n", P_10)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here & approximation in textbook solution")
