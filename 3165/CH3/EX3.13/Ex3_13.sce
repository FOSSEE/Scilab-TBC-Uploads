//Example 3-13
//Program to Pl o t Magni tude Responce o f i d e a l d i f f e r e n t i a t o r wi th s p e c i f i c a t i o n s :
//N=8 ,w=p i
// u s i n g Re c t angul a r window
clc ;
N =8;
alpha =7/2;
U =1;
h_Rect = window ( 're' ,N);
for n =0+ U :1:7+ U
 hd(n)=-( sin (%pi *(n-U- alpha )))/( %pi *(n-U- alpha )*(n-U-alpha ));
 h(n)=hd(n)* h_Rect (n);
end
[ hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2* fr , hzm_dB )
a= gca ();
xlabel ( ' Fr equency w p i ' );
ylabel ( 'Magni tude i n dB ' );
title ( ' Fr equency Re spons e o f g i v e n i d e a l d i f f e r e n t i a t o r u s i n g Re c t angul a r Window , N=8 ' );
xgrid (2)
