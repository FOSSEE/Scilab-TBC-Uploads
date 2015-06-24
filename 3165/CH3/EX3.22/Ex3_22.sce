//Example 3 .22
//Program to Pl o t Magni tude Responce o f i d e a l L.P. F .
// u s i n g Rectangular Window
//N=7,fc=1000Hz,F=5000Hz
clc ;
N =7;
U =4;
h_Rect = window ( 're' ,N);
for n= -3+U :1:3+ U
if n ==4
hd(n) =0.4;
else
hd(n)=( sin ( 2*%pi *(n-U)/5))/( %pi *(n-U));
end
h(n)= h_Rect (n)*hd(n);
end
[ hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2* fr , hzm_dB )
a= gca ();
xlabel ( ' Fr equency w p i ' );
ylabel ( 'Magni tude i n dB ' );
title ( ' Fr equency Re spons e o f FIR LPF wi th N=11 u s i n g RECTANGUlAR Window ' );
xgrid (2);
