// Variable declaration
n1 = 58       // sample-1 size
n2 = 27       // sample-2 size
t = 1.99      // t value corresponding to alpha/2

// Calculation
f1 = [66.4,67.7,68.0,68.0,68.3,68.4,68.6,68.8,68.9,69.0,69.1,69.2,69.3,69.3,69.5,69.5,69.6,69.7,69.8,69.8,69.9,70.0,70.0,70.1,70.2,70.3,70.3,70.4,70.5,70.6,70.6,70.8,70.9,71.0,71.1,71.2,71.3,71.3,71.5,71.6,71.6,71.7,71.8,71.8,71.9,72.1,72.2,72.3,72.4,72.6,72.7,72.9,73.1,73.3,73.5,74.2,74.5,75.3]

Mean1 = mean(f1)
std_dev1 = stdev(f1)

f2 = [71.2,71.8,72.6,72.8,73.4,73.7,73.9,74.4,74.9,75.5,75.9,76.3,76.5,76.7,76.9,77.1,77.3,77.6,77.7,77.8,78.1,78.2,78.4,78.6,79.0,79.3,79.8]

Mean2 = mean(f2)
std_dev2 = nanstdev(f2)

y1 = (Mean1 - Mean2) - t*sqrt( ( (n1-1)*(std_dev1^2) + (n2-1)*(std_dev2^2) ) / (n1+n2-2) ) * sqrt( 1.0/n1 + 1.0/n2 )     // lower limit
y2 = (Mean1 - Mean2) + t*sqrt( ( (n1-1)*(std_dev1^2) + (n2-1)*(std_dev2^2) ) / (n1+n2-2) ) * sqrt( 1.0/n1 + 1.0/n2 )     // upper limit

if abs(y1)>abs(y2) then
    m1=abs(y2)
    m2=abs(y1)
else
    m1=abs(y1)
    m2=abs(y2)
end    
// Result
printf ( "95%% large sample confidence interval(in thousand pounds per square): ( %.2f , %.1f )",m1,m2) 
