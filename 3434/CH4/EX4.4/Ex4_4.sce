// given data
clc
Hg=14450.418 // in kj/m^2 per day from previous example
Ho=22926.408 // in kj/m^2 per day from previous example
KT=Hg/Ho // unitless
Hd=Hg*(1.354-1.570*KT) // in kj/m^2 per day
Hb= Hg-Hd // in kj/m^2 per day

printf("Monthly average of daily diffused is %.2f in kj/m^2 per day",Hd)
printf("\n beam radiation is %.2f in kj/m^2 per day",Hb)

// the solution inthe textbook is slighlty different as the values from previous examples are used which too are incorrect
