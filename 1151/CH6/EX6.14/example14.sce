 s=%s;
 syms K
 p=s^2 -(K +2) *s +((2* K) +5)
cof_a_0 = coeffs (p, ' s ' ,0);
 cof_a_1 = coeffs (p, ' s ' ,1);
 cof_a_2 = coeffs (p, ' s ' ,2);
 r=[ cof_a_0 cof_a_1 cof_a_2 ]
 n= length (r);
routh =[r ([3 ,1]) ;r (2) ,0];
routh =[ routh ;- det ( routh )/ routh (2 ,1) ,0];
 disp (routh ," r outh=")
// f o r sys t em to be s t a b l e
 routh (2 ,1) >0

 K < -2;
 routh (3 ,1) >0
K > -2.5;
disp ("For s t a b l e sys tem , 􀀀2>K>􀀀2.5")
 // f o r l imi t e d s t a b i l i t y
routh (2 ,1) =0
 K=-2
 routh (3 ,1) =0
 K= -2.5
 disp ("For l imt e d s t a b l e sys t em K=􀀀2 and K=􀀀2.5")
 // f o r u n s t a b l e sys t em
 disp ("For u n s t a b l e sys t em K<􀀀2 or K>􀀀2.5")
 roots (p) // g i v e s the r o o t s o f the po l ynomi a l m
// f o r c r i t i c a l l y damped c a s e
28 g=(K+2) ^2 -4*((2* K) +5)
 roots (g)
 // f o r s t a b l i t y K=6.47 i s u n s t a b l e
 // f o r c r i t i c a l damping K=􀀀2.47
 disp ("For underdamded cas e , 􀀀2>K>􀀀2.47")
disp (" f o r overdamped cas e , 􀀀2.47>K>􀀀2.5")
