// Example 2.10
// Superposition Calculations
// First we find the contibution to i_1 from 30-V Source
// From Figure 2.21(b)
i_1_1=30/(6+4+2);// Ohm's Law
// From Figure 2.22(c)
i_1_2=(4*3)/((6+2)+4); // Current Divider
// From Figure 2.22(d)
i_1_3=-(6*8)/(6+(2+4)); // Current Divider
i_1= i_1_1+i_1_2+i_1_3; // Net Current when all the Sources are active
disp(i_1,"Net Current when all the sources are active(in Amps)=")
