

//example 15.1
//design a channel by Kennedy theory using Garret's diagram
clc;funcprot(0);
//given
Q=7;                 //full supply discharge
N=0.0225;            //rogosity coefficient
S=1/4444;            //bed slope
m=1;                 //critical velocity ratio
s=1/2;               //side slope

//Values of B and D are obtained by Garret's diagram fig. 15.3(b) and tabulated as below 
B=[6 7 6.75];            //width of bed from Garret diagram
D=[1.5 1.35 1.38];       //depth of bed from Garret diagram
Vo=[0.72 0.673 0.685];   //from Garret diagram

mprintf("Bed width         Depth            Ratio of V/Vo:              Remarks");
for i=1:3
    A(i)=B(i)*D(i)+D(i)^2/2;       //Area
    V(i)=Q/A(i);                   //Velocity
    r(i)=V(i)/Vo(i);                     //ratio V/Vo
    r(i)=round(r(i)*1000)/1000;
    if i==1 then
    s='small';
else
    if (i==2) then
    s='more';
    
else
    s='satisfactory';
end
end
    mprintf("\n%f           %f          %f                     %s",B(i),D(i),r(i),s);
end
mprintf("\nHence, B=%f m; D=%f m.",B(3),D(3));
