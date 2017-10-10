//Chapter 2: Spectroscopy and Photochemistry
//Problem: 2
clc;

//Declaration of Constants
Na = 6.022 * 10 ** 23           // Mole constant,per mol
pi = 3.141                      // Pi
c = 3 * 10 ** 10                // Speed of light,in cm/s
h = 6.626 * 10 ** -34           // Plank's constant,in J.sec

//Declaration of Variables
b_l = 112.81 * 10 ** -12        // Equillibrium bond length,in m
m1 = 12                         // Mass of Carbon,in g per mol
m2 = 16                         // Mass of Oxygen,in g per mol

// Solution
mu = m1 * m2 / ((m1 + m2) * Na)  //in g
mu = mu * 10 ** -3                   //in kg

B = h / (8 * pi ** 2 * mu * b_l ** 2 * c)
v2_3 = B * 6

mprintf("The reduced mass of CO is %.3e kg\n",mu)
mprintf(" The frequency of 3->2 transition is %.2f /cm",v2_3)
