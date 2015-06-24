

//example 4.6
//ceck whether data at station X is consistence
//year in which regime is indicated
//compute the adjusted rainfall atX
clc;funcprot(0);
//given
X=[69 55 62 67 87 70 65 75 90 100 90 95 85 90 75 95];   //annual rainfall at X
Y=[77 62 67 68 86 90 65 75 70 70 70 75 65 70 55 75];    //average rainfall at 10 base stations
cx(1)=69;               //accumulated annual values at station X 
for i=2:16 
    cx(i)=cx(i-1)+X(i);
end
cy(1)=77;
for i=2:16
    cy(i)=cy(i-1)+Y(i);  //accumulated annual values at ten stations
   
end

//since curve is not having unform slope
mprintf("Record at X is not consistent.");
mprintf("\nFrom the curve regime is observed in the year 1978.")

Q=[1970 1971 1972 1973 1974 1975 1976 1977];
O=[95 75 90 85 95 90 100 90];
for i=1:8
    A(i)=0.7051*O(i);
end
mprintf("\n\nYear          Observed rainfall          Adjusted rainfall");
for i=1:8
    mprintf("\n%i                %i                     %i",Q(i),O(i),A(i));
end
//graph is plotted between cx and cy
