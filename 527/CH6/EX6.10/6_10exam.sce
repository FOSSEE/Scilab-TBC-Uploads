//Engineering and Chemical Thermodynamics
//Example 6.10
//Page no :283

clear ;clc ;
//Given
h_H2SO4 = 1.596 ; //[kJ/mol]
h_H2O = 1.591 ; //[kJ/mol]
C1 = -74.40 ;
C2 = 0.561 ;
A = [0 ,0.1 , 0.2 ,0.3 ,0.4 ,0.5 ,0.6 ,0.7 ,0.8 ,0.9 ,1] ;
B = [1 ,0.9 ,0.8 ,0.7 ,0.6 ,0.5 ,0.4 ,0.3 ,0.2 ,0.1 ,0] ;

disp(" Example: 6.10   Page no : 283") ;
for i = 1:11
    H_bar_H2SO4 = h_H2SO4 + C1 * B(1,i)^2 - 2 * C2 * C1 * A(1,i) * B(1,i)^2 ;
    H_bar_H2O = h_H2O + C1 * A(1,i)^2 -C2 * C1 * A(1,i)^2 * (1 - 2 * B(1,i)) ;
    y_data_1(1,i) =  H_bar_H2SO4 ;
    y_data_2(1,i) =  H_bar_H2O ;
    x_data(1,i) = A(1,i) ;
end
plot(x_data,y_data_1) ;
plot(x_data,y_data_2) ;

m = y_data_1(1,6)  ;
s = y_data_2(1,6)  ;
xtitle("Figue E6.10","x_H2SO4"," Partial molar enthalpy");
printf("\n     For equimolar mixture del_H_H2SO4 = %.1f kJ/mol   del_H_H2O = %.1f kJ/mol",m,s);