// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.25 :
// Page number 85
clear ; clc ; close ; // Clear the work space and console

// Given data
w1 = 1.0       // Week 1
Q1 = 200.0     // Discharge during week 1(m^2/sec)
w2 = 2.0       // Week 2
Q2 = 300.0     // Discharge during week 2(m^2/sec)
w3 = 3.0       // Week 3
Q3 = 1100.0    // Discharge during week 3(m^2/sec)
w4 = 4.0       // Week 4
Q4 = 700.0     // Discharge during week 4(m^2/sec)
w5 = 5.0       // Week 5
Q5 = 900.0     // Discharge during week 5(m^2/sec)
w6 = 6.0       // Week 6
Q6 = 800.0     // Discharge during week 6(m^2/sec)
w7 = 7.0       // Week 7
Q7 = 600.0     // Discharge during week 7(m^2/sec)
w8 = 8.0       // Week 8
Q8 = 1000.0    // Discharge during week 8(m^2/sec)
w9 = 9.0       // Week 9
Q9 = 500.0     // Discharge during week 9(m^2/sec)
w10 = 10.0     // Week 10
Q10 = 400.0    // Discharge during week 10(m^2/sec)
w11 = 11.0     // Week 11
Q11 = 500.0    // Discharge during week 11(m^2/sec)
w12 = 12.0     // Week 12
Q12 = 700.0    // Discharge during week 12(m^2/sec)
w13 = 13.0     // Week 13
Q13 = 100.0    // Discharge during week 13(m^2/sec)
no_week = 13.0 // Total weeks of discharge

// Calculations
Q_average = (Q1+Q2+Q3+Q4+Q5+Q6+Q7+Q8+Q9+Q10+Q11+Q12+Q13)/no_week      // Average weekly discharge(m^3/sec)
// Hydrograph
W = [0,w1,w1,w2,w2,w3,w3,w4,w4,w5,w5,w6,w6,w7,w7,w8,w8,w9,w9,w10,w10,w11,w11,w12,w12,w13,w13,w13]
Q = [200,Q1,Q2,Q2,Q3,Q3,Q4,Q4,Q5,Q5,Q6,Q6,Q7,Q7,Q8,Q8,Q9,Q9,Q10,Q10,Q11,Q11,Q12,Q12,Q13,Q13,Q13,0]
a = gca()
a.thickness = 2                                                       // sets thickness of plot
plot(W,Q)                                                             // Plotting hydrograph
q = Q_average
w = [0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,14]
q_dash = [q,q,q,q,q,q,q,q,q,q,q,q,q,q,q]                              // Plotting average weekly discharge
plot(w,q_dash,'r--')
a.x_label.text = 'Time(week)'                                         // labels x-axis
a.y_label.text = 'Q(m^3/sec)'                                         // labels y-axis
xtitle("Fig E7.4 . Plot of Hydrograph") 
xset('thickness',2)                                                   // sets thickness of axes
xstring(13,560,'Q_av')
xstring(12.02,110,'Q_min')
xstring(2.02,1110,'Q_max')

// Results
disp("PART I - EXAMPLE : 7.25 : SOLUTION :-")
printf("\nThe hydrograph is shown in the Figure E7.4")
printf("\nAverage discharge available for the whole period = %.f m^3/sec", Q_average)
