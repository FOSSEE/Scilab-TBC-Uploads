//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.1-5
//Principles of Momentum Transfer and Applications
//given data
p=[0.25 0.40 0.35];//percentages of diff particle sizes
s=[25 50 75];//sizes of the particles in mm
phi=0.68;//sphericity
sump=0
for i=1:3
    term=p(1,i)/(phi*s(1,i))
    sump=sump+term
end
Dpm=1/sump;
mprintf("mean diameter= %f mm",Dpm)
