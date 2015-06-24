//Example 3 . 3
//Program to Pl o t Magni tude Responce o f i d e a l B .P. F .wi th wc1=0.5p i and wc2=0.75 pi
//N=11
clc ;
N =11;
U =6;
for n= -5+U :1:5+ U
if n ==6
hd(n) =0.5;
else
hd(n)=( sin (%pi *3*(n-U)/4)-sin(%pi*(n-U)/4) )/( %pi *(n-U));
end
end
[ hzm ,fr ]= frmag (hd ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure ;
plot (2* fr , hzm_dB );
a= gca ();
xlabel ( ' Fr equency w p i ' );
ylabel ( 'Magni tude i n dB ' );
title ( ' Fr equency Re spons e o f FIR BPF wi th N=11 ' );
xgrid (2);
