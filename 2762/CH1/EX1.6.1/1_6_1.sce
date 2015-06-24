//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.6-1
//Introduction to engineering principles and units
//given data
//heat reqd= mCp)(delta T)
//a) 298-673K
m=3;//m is given as 3 g mol
H1= m*29.68*(673-298);//for N2 at 673K Cp=29.68 J/g mol K
//b) 298-1123K
H2=m*31*(1123-298);//for N2 at 1123 K Cp=31.00 J/g mol K by linear interpolation
//c) 673-1123K : As there id no mean Cp we subtract a) from b)
H3=H2-H1;
mprintf("the heat reqd in a) : %f joules",H1)
mprintf(" the heat reqd in b): %f joules",H2)
mprintf(" the heat reqd in c): %f joules",H3)

