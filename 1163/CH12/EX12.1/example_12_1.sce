clear;
clc;
disp("--------------Example 12.1---------------")
d=600*10^3; // 600 km
speed = 3*10^8; // 3*10^8 m/s
Tp=(d/speed)*10^3; // propagation time

// a) K=1
K=[0 1]; // range
TB1=Tp*K(1);
TB2=Tp*K(2);
printf("\na)K=1 :-  TB is either  %d ms (0 x 2) or %d ms (l x 2), based on the outcome of the random variable.\n",TB1,TB2); // display result
// b) K=2
K=[0 1 2 3]; // range
TB1=Tp*K(1);
TB2=Tp*K(2);
TB3=Tp*K(3);
TB4=Tp*K(4);
printf("\nb)K=2 :-  TB can be %d, %d, %d, or %d ms, based on the outcome of the random variable.\n",TB1,TB2,TB3,TB4); // display result
// c) K=3
K=[0 1 2 3 4 5 6 7]; //range
TB1=Tp*K(1);
TB2=Tp*K(2);
TB3=Tp*K(3);
TB4=Tp*K(4);
TB5=Tp*K(5);
TB6=Tp*K(6);
TB7=Tp*K(7);
TB8=Tp*K(8);
printf("\nc)K=3 :-  TB can be %d, %d, %d, %d, %d, %d, %d or %d ms, based on the outcome of the random variable.\n",TB1,TB2,TB3,TB4,TB5,TB6,TB7,TB8); // display result
// d) K >10
printf("\nd)K>10 :-  If K > 10, it is normally set to 10.") // display result
