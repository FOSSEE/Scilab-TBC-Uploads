//Variable declaration
l = [205,245,285,325,365,405]  // intervels
Marks = []

//Calculation
for i = 1:5
    Marks(i) = (l(i)+l(i+1))/2
end

//Results
printf ( "Class Average: ")
for i = 1:5
    disp(Marks(i))
end    

printf ("Class Interval: %.2f",l(2)-l(1))
