// Variable declaration
val = [0.57, 0.74, 0.26, 0.77, 0.12]
l = []

// Calculation
for i = 1:length(val)
    l(i) = sqrt(-20.0*log(1-val(i)))
end    

// Result
printf ( "Five observations: ")
for i = 1:5
    printf ( " %.3f  ",l(i))
end
