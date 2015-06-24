//Example 3 . 12
//Program to Pl o t Magni tude Responce o f g i v e n L .P. F . wi th s p e c i f i c a t i o n s :
//N=13 ,w=p i /6
clc ;
alpha =6;
U =1;
for n =0+ U :1:12+ U
if n ==7
hd(n) =0.167;
else
hd(n)=( sin ( %pi *(n-U- alpha ) /6) )/( %pi *(n-U- alpha ));
end
end
[ hzm ,fr ]= frmag (hd ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2* fr , hzm_dB )
a= gca ();
xlabel ( ' Fr equency w p i ' );
ylabel ( 'Magni tude i n dB ' );
title ( ' Fr equency Re spons e o f g i v e n LPF wi th N=13 ' );
xgrid (2)
disp (hd ," F i l t e r Co e f f i c i e n t s , h ( n )=");
