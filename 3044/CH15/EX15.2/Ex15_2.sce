// Variable declaration

lsl = 10.98        // Diameter in mm 
usl = 11.01        // Diameter in mm 
s = 0.0035
x_avg = 10.991

// Calculation



Cp = (usl - lsl)/(6*s)

Cpk = min(x_avg-lsl , usl-x_avg)/(3*s)


// Result
disp(Cp)
disp(Cpk)
printf ( "Second index is smaller than First")
