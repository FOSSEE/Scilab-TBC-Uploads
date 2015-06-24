clear
clc
//to find frequency we would perceive

// GIVEN:
//frequency of siren
f = 1125//in Hz
//speed of car
vs = 29//in m/s
//speed of car and your speed
v_0 = 14.5//in m/s
//speed of sound
v = 343//in m/s


// SOLUTION
//using equation of sound wave
//frequency we would perceiv when police car is moving
f_dash = f*(v/(v-vs))//in Hz
f_dash = round(f_dash)
//frequency we would perceiv when your car is moving
v0 = vs//in m/s
fdash = f*((v+v0)/v)//in Hz
//frequency we would perceiv when both police car and your car is moving
v0 = v_0
F_dash = f*((v+v0)/(v-v0))//in Hz
//frequency we would perceiv when your car moving at 9m/s and police car is behind you with 38m/s
v0 = 9//in m/s
vs = 38//in m/s
Fdash = f*((v-v0)/(v-vs))//in Hz
Fdash = round(Fdash)
printf ("\n\n Frequency we would perceiv when police car is moving f_dash = \n\n %4i Hz",f_dash)
printf ("\n\n Frequency we would perceiv when your car is moving fdash = \n\n %4i Hz",fdash)
printf ("\n\n Frequency we would perceiv when both police car and your car is moving F_dash = \n\n %4i Hz",F_dash)
printf ("\n\n Frequency we would perceiv when your car moving at 9m/s and police car is behind you with 38m/s Fdash = \n\n %4i Hz",Fdash)

