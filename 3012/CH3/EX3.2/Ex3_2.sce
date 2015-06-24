// Given:-
m = 0.05                       // mass of ammonia in kg 
p1 = 1.5*(10**5)               // initial pressure of ammonia in pascal
v1 = 0.7787                    // specific volume in state 1 in m3/kg from table A-14
v2 = 0.9553                    // specific volume in state 2 in m3/kg from table A-15
T2 = 25.0                      // final temperature in degree celcius

// Calculations

V1 = m*v1                      // volume occupied by ammonia in state 1 in m3
V2 = m*v2                      // volume occupied by ammonia in state 2 in m3
w = (p1*(V2-V1))/1000          // work in KJ

// Results
printf( ' The volume occupied by ammonia in state 1 is %.2f m^3.',V1)
printf( ' The volume occupied by ammonia in state 2 is %.2f m^3',V2)
printf( ' The work done for the process is %.2f KJ',w)
