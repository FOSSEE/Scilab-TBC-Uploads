clc
//Given 
T1 = 600 // Source temperature of heat engine in degree Celsius
T2 = 40 // Sink temperature of heat engine in degree Celsius 
T3 = -20 // Source temperature of refrigerator in degree Celsius
Q1 = 2000  // Heat transfer to heat engine in kJ
W = 360  // Net work output of plant in kJ
// Part (a)
e_max = 1-((T2+273)/(T1+273)) // maximum efficiency 
W1 = e_max*Q1 // maximum work output 
COP = (T3+273)/((T2-273)-(T3-273)) // coefficient of performance of refrigerator
W2 = W1-W // work done to drive refrigerator 
Q4 = COP*W2 // Heat extracted by refrigerator
Q3 = Q4+W2 // Heat rejected by refrigerator
Q2 = Q1-W1 // Heat rejected by heat engine
Qt = Q2+Q3 // combined heat rejection by heat engine and refrigerator 
printf("\n Example 6.3")
printf("\n\n Part A:")
printf("\n The heat transfer to refrigerant is %d kJ",Q2)
printf("\n The heat rejection to the 40 degree reservoir is %f kJ",Qt)

// Part (b)
printf("\n\n Part B:")
e_max_ = 0.4*e_max // maximum efficiency
W1_ = e_max_*Q1 // maximum work output 
W2_ = W1_-W // work done to drive refrigerator 
COP_ = 0.4*COP // coefficient of performance of refrigerator
Q4_ = COP_*W2_  // Heat extracted by refrigerator
Q3_ = Q4_+W2_ // Heat rejected by refrigerator
Q2_ = Q1-W1_ // Heat rejected by heat engine
QT = Q2_+Q3_// combined heat rejection by heat engine and refrigerator 
printf("\n The heat transfer to refrigerant is %f kJ",Q2_)
printf("\n The heat rejection to the 40 degree reservoir is %f kJ",QT)
//The answers vary due to round off error

