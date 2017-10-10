//Chapter 7: Solid State
//Problem: 6
clc;

//Declaration of Variables
l = 2 * 10 ** - 10  //in m
t = 30              //in degrees

// Solution
mprintf("For first-order reflection\n")
d = l / (2 * sin(t))
dist = 2 * d
mprintf(" Hence, distance between planes is : %.0e m ",abs(dist))
