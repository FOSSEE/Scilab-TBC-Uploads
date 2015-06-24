//(3.2)  A vertical piston–cylinder assembly containing 0.05 kg of ammonia, initially a saturated vapor, is placed on a hot plate. Due to the weight of the piston and the surrounding atmospheric pressure, the pressure of the ammonia is 1.5 bars. Heating occurs slowly, and the ammonia expands at constant pressure until the final temperature is 25C. Show the initial and final states on T–v and p–v diagrams, and determine(a) the volume occupied by the ammonia at each state, in m3.(b) the work for the process, in kJ.

// solution

// variable initialization

m = .05                       // mass of ammonia in kg 
p1 = 1.5*10^5                      // initial pressure of ammonia in pascal
T2 = 25                       // final temperature in degree celcius

//part (a)
v1 = .7787                    // specific volume in state 1 in m3/kg from table A-14
V1 = m*v1                     // volume occupied by ammonia in state 1 in m3
v2 = .9553                    // specific volume in state 2 in m3/kg from table A-15
V2 = m*v2                     // volume occupied by ammonia in state 2 in m3

printf('the volume occupied by ammonia in state 1 in m3 is:\n\t V1 = %f',V1);
printf('\nthe volume occupied by ammonia in state 2 in m3 is:\n\t V2 = %f',V2);

// part (b)
w = (p1*(V2-V1))/1000         // work in KJ
printf('\nthe work done for the process in KJ is:\n\t W = %f',w)
