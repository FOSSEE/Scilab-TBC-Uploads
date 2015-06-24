//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.2-1
//Principles of Steady State Heat Transfer
//given data
//si units
//nomenclature of unmentioned specifications similar to previous example
k=0.151;
T1=274.9;
T2=297.1;
r1=5/1000;
r2=20/1000;
L=1;
A1=2*3.14*L*r1;//area of inner surface of cylinder
A2=2*3.14*L*r2;
Am=(A2-A1)/(log(A2/A1)/log(2.71828183));//log mean of inner surface area and outer surface area
q=(k*Am*(T1-T2))/(r2-r1);//fouriers law
if(q<0)
    disp("HT is from r2 to r1")
    else
    disp("HT is from r1 to r2")
end
qd=-14.65;//amt of heat that needs to be dissipitated
l=qd/q;//length reqd
mprintf("length of tubing required= %f m",l)
