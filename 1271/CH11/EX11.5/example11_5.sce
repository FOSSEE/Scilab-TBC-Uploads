clc 
// Given that
x = 100 // in meter
y = 10 // in meter
z = 5  // in meter
t = 1e-4 // in sec
// coordinates of point in frame F
v = 2.7e8 // velocity of frame F_ w.r.t. frame F in m/sed
c=3e8 // speed of light in m/sec
// Sample Problem 5 on page no. 11.19
printf("\n # PROBLEM 5 # \n")
// according to Galilean transformation
x__ = x-v*t
y__=y
z__=z
t__=t
// according to Lorentz transformation
x_ = (x-v*t)/sqrt(1-(v/c)^2)
y_=y
z_=z
t_=(t-(v*x/c^2))/sqrt(1-(v/c)^2)
printf("\n Coordinate of the event in reference frame F_ using (a)Galilean transformation-x=%f m, y=%f m, z = %f m, t = %e sec. \n (b)Lorentz transformation-x=%f m,y =%f m, z = %f m, t=%e sec. ",x__,y__,z__,t__,x_,y_,z_,t_)
