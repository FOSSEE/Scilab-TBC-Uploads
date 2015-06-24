s=%s;
 syms K a
 p=s ^4+10* s ^3+32* s ^2+( K +32) *s+(K*a)
cof_a_0 = coeffs (p, ' s ' ,0);
cof_a_1 = coeffs (p, ' s ' ,1);
 cof_a_2 = coeffs (p, ' s ' ,2);
cof_a_3 = coeffs (p, ' s ' ,3);
 cof_a_4 = coeffs (p, ' s ' ,4);
r=[ cof_a_0 cof_a_1 cof_a_3 cof_a_4 ]
 n= length (r);
 routh =[r ([5 ,3 ,1]) ;r ([4 ,2]) ,0]
routh =[ routh ;- det ( routh (1:2 ,1:2) )/ routh (2 ,1) ,-det (routh (1:2 ,2:3) )/ routh (2 ,2) ,0];
routh =[ routh ;- det ( routh (2:3 ,1:2) )/ routh (3 ,1) ,-det (routh (2:3 ,2:3) )/ routh (3 ,2) ,0];
routh =[ routh ;- det ( routh (3:4 ,1:2) )/ routh (4 ,1) ,0 ,0];
disp (routh ," r outh=")
// f o r the g i v e n sys t em to be s t a b l e
routh (3 ,1) >0
K <288;
routh (4 ,1) >0
(288 -K)*(K +32) -100(K*a) >0
// l e t K=200
K =200;
a =((288 - K)*(K +32) ) /(100* K)
// v e l o c i t y e r r o r
Kv =(K*a) /(4*2*4) ;
// % v e l o c i t y e r r o r
Kvs =100/ Kv
disp (a," c o n t r o l parame t e r=")
disp (K,"Gain=")
