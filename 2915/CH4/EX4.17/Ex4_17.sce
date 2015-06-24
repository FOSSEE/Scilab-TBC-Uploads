clc,clear
//Example 4.17
//To find the angular speed of larger gear interlocked with smaller gear

r1=5 //radius of larger gear
r2=4 //radius smaller gear
w2=25 //angular speed of smaller gear

// Imagine a particle on outer radii of each gear
//At any time, for every rotation, circular displacement of each particle is same
// (or) s1=s2   implies  v1*t=v2*t
//v1= v2 implies w1*r1=w2*r2

w1=(w2*r2)/r1  //angular speed of larger gear
printf('Angular speed of larger gear= %.0f rpm ',w1)
