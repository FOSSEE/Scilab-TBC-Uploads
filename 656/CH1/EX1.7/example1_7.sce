//For p1, the 5-A current is out of the positive terminal (or into the negative terminal hence,

// power(p) in watts is given by p=V*I

// v voltage in volts and i current in Amperes 

p1=20*-5;

disp("p1=")
disp(p1)
units='Watts W'
p1=[string(p1) units];
disp(p1)

// in watts

 
// power in p1 is -100w ie. the supplied power
 
//For p2 and p3, the current flows into the positive terminal of the element in each case. hence,
 
p2=12*5;

disp("p2=")
disp(p2)
units='Watts W'
p2=[string(p2) units];
disp(p2)

// in watts
 
 
// p2 is 60w absorbed power
 
p3=8*6;

disp("p3=")
disp(p3)
units='Watts W'
p3=[string(p3) units];
disp(p3)

// in watts

 
// p3 is absorbed power
 
//For p4,we should note that the voltage is 8V(positive at the top), the same as the voltage for p3, since both the passive element and the dependent source are connected to the same terminals.
 
// i current is 5A
 
p4=8*(-0.2*5);

disp("p4=")
disp(p4)
units='Watts W'
p4=[string(p4) units];
disp(p4)

// in watts


// p4 is -8w supplied power

// now...
p1=-100;
p2=60;
p3=48;
p4=-8;

p0=p1+p2+p3+p4;
disp(p0)

disp("W")
// in watts W

// this shows that total power supplied equals total power absorbed.
 

