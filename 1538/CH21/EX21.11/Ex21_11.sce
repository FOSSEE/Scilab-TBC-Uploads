//example-21.11
//page no-650
//given
//frequency
f=50  //Hz
//eddy current loss in transformer
We=100  //W
//to find eddy current loss at frequencies
f1=60  //Hz
f2=100  //Hz
//as we know that
//We is directly proportional to f^2
We1=f1^2*We/f^2  //W
//similarly
We2=f2^2*We/f^2  //W
printf ("the eddy current loss at 60 Hz is %f W \n and at 100 Hz is %f W",We1,We2)
