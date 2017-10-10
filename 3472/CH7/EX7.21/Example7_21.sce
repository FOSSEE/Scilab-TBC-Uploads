// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.21 :
// Page number 81-82
clear ; clc ; close ; // Clear the work space and console

// Given data
t0 = 0.0                 // Time 12 morning
l0 = 4.0                 // Load at 12 morning(kW*1000)
t1 = 1.0                 // Time 1 a.m
l1 = 3.5                 // Load at 1 a.m(kW*1000)
t2 = 2.0                 // Time 2 a.m
l2 = 3.0                 // Load at 2 a.m(kW*1000)
t3 = 3.0                 // Time 3 a.m
l3 = 3.0                 // Load at 3 a.m(kW*1000)
t4 = 4.0                 // Time 4 a.m
l4 = 3.5                 // Load at 4 a.m(kW*1000)
t5 = 5.0                 // Time 5 a.m
l5 = 3.0                 // Load at 5 a.m(kW*1000)
t6 = 6.0                 // Time 6 a.m
l6 = 6.0                 // Load at 6 a.m(kW*1000)
t7 = 7.0                 // Time 7 a.m
l7 = 12.5                // Load at 7 a.m(kW*1000)
t8 = 8.0                 // Time 8 a.m
l8 = 14.5                // Load at 8 a.m(kW*1000)
t9 = 9.0                 // Time 9 a.m
l9 = 13.5                // Load at 9 a.m(kW*1000)
t10 = 10.0               // Time 10 a.m
l10 = 13.0               // Load at 10 a.m(kW*1000)
t11 = 11.0               // Time 11 a.m
l11 = 13.5               // Load at 11 a.m(kW*1000)
t113 = 11.50             // Time 11.30 a.m
l113 = 12.0              // Load at 11.30 am(kW*1000)
t12 = 12.0               // Time 12 noon
l12 = 11.0               // Load at 12 noon(kW*1000)
t123 = 12.50             // Time 12.30 noon
l123 = 5.0               // Load at 12.30 noon(kW*1000)
t13 = 13.0               // Time 1 p.m
l13 = 12.5               // Load at 1 p.m(kW*1000)
t133 = 13.50             // Time 1.30 p.m
l133 = 13.5              // Load at 1.30 p.m(kW*1000)
t14 = 14.0               // Time 2 p.m
l14 = 14.0               // Load at 2 p.m(kW*1000)
t15 = 15.0               // Time 3 p.m
l15 = 14.0               // Load at 3 p.m(kW*1000)
t16 = 16.0               // Time 4 p.m
l16 = 15.0               // Load at 4 p.m(kW*1000)
t163 = 16.50             // Time 4.30 p.m
l163 = 18.0              // Load at 4.30 p.m(kW*1000)
t17 = 17.0               // Time 5 p.m
l17 = 20.0               // Load at 5 p.m(kW*1000)
t173 = 17.50             // Time 5.30 p.m
l173 = 17.0              // Load at 5.30 p.m(kW*1000)
t18 = 18.0               // Time 6 p.m
l18 = 12.5               // Load at 6 p.m(kW*1000)
t19 = 19.0               // Time 7 p.m
l19 = 10.0               // Load at 7 p.m(kW*1000)
t20 = 20.0               // Time 8 p.m
l20 = 7.5                // Load at 8 p.m(kW*1000)
t21 = 21.0               // Time 9 p.m
l21 = 5.0                // Load at 9 p.m(kW*1000)
t22 = 22.0               // Time 10 p.m
l22 = 5.0                // Load at 10 p.m(kW*1000)
t23 = 23.0               // Time 11 p.m
l23 = 4.0                // Load at 11 p.m(kW*1000)
t24 = 24.0               // Time 12 morning
l24 = 4.0                // Load at 12 morning(kW*1000)

// Calculations
t = [t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24]
l = [l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l20,l21,l22,l23,l24]
a = gca() ;
a.thickness = 2                                    // sets thickness of plot
plot(t,l,'ro-')                                    // Plot of Chronological load curve
T = [0,0.5,1,1.5,2.5,4.5,6,7,9,9.5,10,11,12,13,15.5,18.5,20.5,23.5,24] // Solved time
L = [20,18,17,15,14.5,14,13.5,13,12.5,12,11,10,7.5,6,5,4,3.5,3,3]      // Solved load
plot(T,L,'--mo')                                   // Plot of load duration curve
a.x_label.text = 'Time & No. of hours'             // labels x-axis
a.y_label.text = 'Load in 10^3 kW'                 // labels y-axis
xtitle("Fig E7.2 . Plot of Chronological load curve and load duration curve") 
xset('thickness',2)                                // sets thickness of axes
xstring(17.5,17,'Chronological load curve')
xstring(1.1,17,'Load duration curve')

// Results
disp("PART I - EXAMPLE : 7.21 : SOLUTION :-")
printf("\nThe chronological load curve and the load duration curve is shown in the Figure E7.2\n")
printf("\nNOTE: The time is plotted in 24 hours format')
