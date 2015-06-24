clear
clc
//to find average angular velocity of fan blade
//to find average angular aceleration of fan blade

// GIVEN::

//initial angular velocity of fan blade
wi1 = 48.6//in revolution per minute
wi = wi1/60//in rev/s
//final angular velocity of fan blade
//as finally fan blade comes to rest
wf = 0//in revolution per minute 
//time required for fan blade to come to rest
delta_t = 32//in seconds
//no. of revolution completed by fan blade before come to rest
delta_fi = 8.8


// SOLUTION:
//using kinematic equation of motion for rotational motion
//average angular velocity of fan blade
w_av = delta_fi/delta_t//in rev/s
//average angular aceleration of fan blade
a_av = (wf-wi)/delta_t//in rev/s^2

printf ("\n\n Average angular velocity of fan blade w_av = \n\n %.2f rev/s",w_av);
printf ("\n\n Average angular acceleration of fan blade a_av = \n\n %.3f rev/s^2",a_av);
