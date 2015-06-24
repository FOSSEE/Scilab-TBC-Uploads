clear;
clc;
disp("--------------Example 4.7---------------")
T=60; // The second hand of a clock has a period of 60 s.
printf("The second hand of a clock has a period of %d s.\n",T);
// a) Sampling at Nyquist rate
Ts=0.5*T ; // or fs = 2f
sp=[]; // sampling points
time=[12 6];
for i=0:5  // assign sampling points
    if(modulo(i,2)==0)
        sp(i+1)=time(1);
    else
        sp(i+1)=time(2);
    end
end
//display the result
printf("\na)According to the Nyquist theorem, the second hand is sampled every %d s .\nThe sample points, in order, are %d, %d, %d, %d, %d, and %d.\nThe receiver of the samples cannot tell if the clock is moving forward or backward.",Ts,sp(1),sp(2),sp(3),sp(4),sp(5),sp(6));
// b) Sampling at double the Nyquist rate
Ts=0.25*T; // or fs = 4f
sp=[]; //sampling points
time=[12 3 6 9];
for i=0:4  // assign sampling points
    if (i==4) then
        sp(i+1)=time(1);
    else
        sp(i+1)=time(i+1);
    end
end
//display the result
printf("\n\nb)The second hand is sampled at double the Nyquist rate or every %d s.\nThe sample points, in order, are %d, %d, %d, %d, and %d. The clock is moving forward.",Ts,sp(1),sp(2),sp(3),sp(4),sp(5));
// b) Sampling at lesser than Nyquist rate
Ts=0.75*T; // or fs = 4/3f
sp=[]; //sampling points
time=[12 9 6 3];
for i=0:4  // assign sampling points
    if (i==4) then
        sp(i+1)=time(1);
    else
        sp(i+1)=time(i+1);
    end
end
//display the result
printf("\n\nc)The second hand is sampled below the Nyquist rate or every %d s.\nThe sample points, in order, are %d, %d, %d, %d, and %d. Although the clock is moving forward, the receiver thinks that the clock is moving backward.",Ts,sp(1),sp(2),sp(3),sp(4),sp(5));