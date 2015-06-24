//Engineering and Chemical Thermodynamics
//Example 8.9
//Page No:388

clear  ; clc ;
//Given
R = 8.314 ;
T = 10 + 273 ; //[K]
A_B = 9.2806 ; // From Appendix A , Table A1.1
B_B = 2788.5 ; // From Appendix A , Table A1.1
C_B = -52.36 ; // From Appendix A , Table A1.1
A_C = 9.1325 ; // From Appendix A , Table A1.1
B_C = 2766.63 ; // From Appendix A , Table A1.1
C_C = -50.50 ; // From Appendix A , Table A1.1

x1 = [0 ,0.0610 ,0.2149 ,0.3187 ,0.4320 ,0.5246 ,0.6117 ,0.7265 ,0.8040 ,0.8830 ,0.8999 ,1] ; //From table E8.9A
P_exp = [6344 ,6590 ,6980 ,7140 ,7171 ,7216 ,7140 ,6974 ,6845 ,6617 ,6557 ,6073] ; //From table E8.9A

P_1_sat = 6072.15 ; //[Pa]
P_2_sat = 6344 ; //[Pa]  

A = [1390 ,1391 ,1392 ,1393 ,1394 ,1395 ,1396 ,1397 ,1398 ,1399 ,1400 ,1401 ,1402 ,1403 ,1404 ,1405 ,1406 ,1407 ,1408 ,1409 ,1410 ] ;

for k = 1:21
    y = A(1,k) ;
   for i = 1:12
        P(1,i) = x1(1,i) * exp( y / (R * T ) * (1 - x1(1,i))^2) * P_1_sat+(1 - x1(1,i)) * exp(y / (R * T ) * x1(1,i)^2) * P_2_sat ;
        C(k,i) = (P(1,i) - P_exp(1,i))^2 ;
    end
end 

for k = 1:21 
   y = 0 ;
   for i = 1:12
     y = y + C(k,i) ;       
   end
    R(1,k) = y ;
end

k = 100000 ;
for i = 1:21
    K = R(1,i) ; 
    if K < k then
        k = K ;
    end
end
disp(" Example: 8.9   Page no : 388") ;
for i = 1:21
    if R(1,i) == k then
      printf("\n      The two suffix Margules co-efficient is = %g J/mol" ,A(1,i)) ; 
    end
end
