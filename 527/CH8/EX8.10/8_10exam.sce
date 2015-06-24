//Engineering and Chemical Thermodynamics
//Example 8.10
//Page No:390

clear ; clc ;
//Given
R = 8.314 ;
T = 10 + 273.15 ; //[K]
A_B = 9.2806 ; // From Appendix A , Table A1.1
B_B = 2788.5 ; // From Appendix A , Table A1.1
C_B = -52.36 ; // From Appendix A , Table A1.1
A_C = 9.1325 ; // From Appendix A , Table A1.1
B_C = 2766.63 ; // From Appendix A , Table A1.1
C_C = -50.50 ; // From Appendix A , Table A1.1

x1 = [0,0.0610 ,0.2149 ,0.3187 ,0.4320 ,0.5246 ,0.6117 ,0.7265 ,0.8040 ,0.8830 ,0.8999 ,1] ; //From table E8.9A
P_exp = [6344 ,6590 ,6980 ,7140 ,7171 ,7216 ,7140 ,6974 ,6845 ,6617 ,6557 ,6073] ; //From table E8.9A

P_1_sat = 6073 ; //[Pa]
P_2_sat = 6344 ; //[Pa] 
A = 1390:1410 ;
B = 60:80 ;
w = 1 / (R * T) ;
for k = 1:21
    y = A(k) ;
    for i = 1:21 
        z = B(i) ;
        for j = 1:12
        P(1,j) = x1(1,j) * exp((y + 3 * z) * (1 - (x1(1,j)))^2 *w-4*z*(1-x1(1,j))^3* w )* P_1_sat + (1-x1(1,j))*exp((y -3*z)*(x1(1,j))^2 * w + 4 * z * (x1(1,j)^3) * w )*P_2_sat ;
        R(1,j) =(P(1,j) - P_exp(1,j))^2 ;
        end
        
        m = 0 ;
        for l = 1:12
            m = m + R(1,l) ;
        end
        S(k,i) = m ;
     end  
end
for i = 1:21
    k = S(i,1) ;
    for l = 2:21
        if S(i,l) < k then
           k = S(i,l) ;
        end
    end
        D(1,i) = k ;
end

a = D(1,1) ;
for i = 2:21
    if D(1,i) < a then
        a = D(1,i) ;
    end
end
disp(" Example: 8.10   Page no : 390") ;
for i = 1:21
    if D(1,i) == a then
        for l = 1:21
            if S(i,l) == a then
                printf("\n     A = %g J/mol",A(1,i));
                printf("\n     B = %g J/mol",B(1,l)) ;
            end
        end
    end
end
