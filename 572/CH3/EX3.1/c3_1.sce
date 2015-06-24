// (3.1) A closed, rigid container of volume 0.5 m3 is placed on a hot plate. Initially, the container holds a two-phase mixture of saturated liquid water and saturated water vapor at p1 = 1 bar with a quality of 0.5. After heating, the pressure in the container is p2=  1.5 bar. Indicate the initial and final states on a T–v diagram, and determine (a) the temperature, in degree Celcius, at each state.(b) the mass of vapor present at each state, in kg.(c) If heating continues, determine the pressure, in bar, when the container holds only saturated vapor.

// solution 

//initializing variables
p1 = 10^5                    // initial pressure in pascal 
x1 = .5                      // initial quality
p2 = 1.5*10^5                // pressure after heating in pascal
v = .5                       // volume of container in m3

vf1 = 1.0432*10^(-3)         // specific volume of fluid in state 1 in m3/Kg(from table A-3)
vg1 = 1.694                  // specific volume of gas in state 1 in m3/kg(from table A-3)

v1 = vf1 + x1*(vg1-vf1)      // specific volume in state 1 in m3/Kg
v2 = v1                      // specific volume in state 2 in m3/Kg
vf2 = 1.0582*10^(-3)         //  specific volume of fluid in state 2 in m3/Kg(from table A-3)
vg2 = 1.159                  //  specific volume of gas in state 2 in m3/Kg(from table A-3) 

// part (a)
T1 = 99.63                   // temperature in degree celcius in state 1, from table A-3
T2 = 111.4                   // temperature in degree celcius in state 2, from table A-3
printf('the temperature in degree celcius in state 1 is:\n\t T1 = %f',T1);
printf('\nthe temperature in degree celcius in state 2 is:\n\t T2 = %f',T2);

// part (b)
m = v/v1                     // total mass in Kg
mg1 = x1*m                   // mass of vapour in state 1 in Kg
printf('\nthe mass of vapor in state 1 in Kg is:\n\t mg1 = %f',mg1 );
x2 = (v1-vf2)/(vg2-vf2)      // quality in state 2
mg2 = x2*m                   // mass of vapor in state 2 in Kg 
printf('\nthe mass of vapor in state 2 in Kg is:\n\t mg2 = %f',mg2 );

//part(c)
p3 = 2.11                    // pressure in state 3 from table A-3
printf('\nthe pressure corresponding to state 3 in bar is:\n\t p3 = %f',p3 );




