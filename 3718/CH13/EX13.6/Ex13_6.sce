//Chapter 13: Fuel and Combustions
//Problem: 6
clc;

//Declaration of Variables
w1 = 2.5          // g
w2 = 2.415        // g
r = 1.528         // g
ma = 0.245        // Mass of ash, g

// Solution
m = w1 - w2       // Mass of moisture in coal
mv = w2 - r       // Mass of volatile matter

moip = m * 100 / w1
vp = mv * 100 / w1
ap = ma * 100 / w1
cp = 100 - (moip + vp + ap)

mprintf("Percentage of moisture:%.1f percentage\n", moip)
mprintf(" Percentage of volatile matter:%.2f percentage\n", vp)
mprintf(" Percentage of ash:%.1f percentage\n", ap)
mprintf(" Percentage of fixed carbon:%.2f percentage", cp)
