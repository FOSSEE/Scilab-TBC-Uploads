clc
//Given that
r_peri = 360 // distance of perigee of satellite from Earth surface in km
r_apo = 2500 // distance of apogee of satellite from Earth surface in km
R_e = 6400 // radius of Earth in km
v_p = 30000 // speed of satellite at apogee position in km/h
// sample problem 13 page No. 305
printf ("\n\n\n # Problem 13 # \n")

printf ("\n Standard formula used v * r = k ")
r_p = r_peri + R_e // calculation of distance of perigee
r_a = r_apo + R_e// calculation of distance of apogee

v_a = v_p * r_p / r_a // calculation of speed at apogee
printf (" \n Speed at perigee is %d km/h and at apogee is %f km/h .",v_p, v_a)
