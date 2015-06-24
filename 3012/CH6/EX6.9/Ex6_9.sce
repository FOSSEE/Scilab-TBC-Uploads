// Given:-
P1 = 1.00                                    // initial pressure in bar
T1 = 300.00                                  // initial temperature in kelvin
T2 = 650.00                                  // final temperature in kelvin

// Part(a)
// From table A-22
pr2 = 21.86                               
pr1 = 1.3860
k = 1.39                                     // From table A-20

// Calculations
p2 = P1*(pr2/pr1)
p2a = P1*((T2/T1)**(k/(k-1)))

// Results
printf( ' P2  =  %f bar.',p2)
printf( ' Part(b) IT software problem');
printf( ' P2a  = %f bar',p2a);
