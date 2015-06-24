//Example 2 . 13
//Program to Compute c i r c u l a r c o n v o l u t i o n o f f o l l owi n g s e q u e n c e s
// x [ n ]=[ 1 , 2 , 2 , 1 , 0 ]
//Y[ k]=exp(􀀀j 4 p i k / 5 ) .X[ k ]
clc ;
x=[1 ,2 ,2 ,1 ,0];
X= fft(x , -1);
k =0:1:4;
j= sqrt ( -1);
pi =22/7;
H= exp(-j *4* pi*k/5);
Y=H.*X;
//IDFT Computation
y= fft(Y ,1) ;
// Di s pl a y s e quenc e y [ n ] i n command window
disp ( round (y),"y [ n]=");
// Pl o t s
n =0:1:4;
a = gca ();
y_location =" o r i g i n ";
x_location =" o r i g i n ";
plot2d3 (n, round (y) ,5);
poly1 =a. children (1) . children (1);
thickness =2;
xtitle ( ' Pl o t o f s e quenc e y [ n ] ' , ' n ' , ' y [ n ] ' );
