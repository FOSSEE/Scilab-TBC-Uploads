//Variable declaration
l = [205,245,285,325,365,405]  // intervels
frequency = [3,11,23,9,4]
cal = []
sum1 = 0
//Calculation
k = 1
for i = 2:6
    for j  = 1:i-1
        sum1 = sum1 + frequency(j)
    end
    cal(k) =sum1
    k = k + 1
    sum1 = 0
end    
    
//Results
printf ( "Cumulative Frequency: ")
for i  = 1:5
    printf ( "\n( %d , %d ) -> %d",l(i),l(i+1),cal(i))
end
