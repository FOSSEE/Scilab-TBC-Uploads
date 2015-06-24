//Engineering and Chemical Thermodynamics
//Example 9.18
//Page no :470

clear ; clc
//Given
del_g_f_CH4 = -50.72 ;
del_g_f_H2 = 0 ;
del_g_f_H2O = -228.57 ;
del_g_f_CO = -137.17 ;
del_g_f_CO2 = -394.36 ;
del_h_f_CH4 = -74.81 ;
del_h_f_H2 = 0 ;
del_h_f_H2O = -241.82 ;
del_h_f_CO = -110.53 ;
del_h_f_CO2 = -393.51 ;

v1_CH4 = -1 ;
v1_H2 = 3 ;
v1_H2O = -1 ;
v1_CO = 1 ;
v1_CO2 = 0 ;
v2_CH4 = -1 ;
v2_H2 = 4 ;
v2_H2O = -2 ;
v2_CO = 0 ;
v2_CO2 = 1 ;

A_CH4 = 1.702 ;
B_CH4 = 9.08 * 10^-3 ;
C_CH4 = -2.16 * 10^-6 ;
D_CH4 = 0 ;
A_H2 = 3.249 ;
B_H2 = 4.22 * 10^-4 ;
C_H2 = 0 ;
D_H2 = 8.30 * 10^3 ;
A_H2O = 3.47 ;
B_H2O = 1.45 * 10^-3 ;
C_H2O = 0 ;
D_H2O = 1.21 * 10^4 ;
A_CO = 3.376 ;
B_CO = 5.57 * 10^-4 ;
C_CO = 0 ;
D_CO = -3.10 * 10^3 ;
A_CO2 = 5.457 ;
B_CO2 = 1.05 * 10^-3 ;
C_CO2 = 0 ;
D_CO2 = -1.16 * 10^5 ;

M(:,1) = 600:50:1150 ;
R = 8.314 ;
P = 1  ; //[bar]
T_ref = 298.15 ; //[K]

del_g_f_1 = (v1_CO * del_g_f_CO + v1_H2 *del_g_f_H2 + v1_CH4 * del_g_f_CH4 + v1_H2O * del_g_f_H2O) * 1000  ;
del_h_f_1 = (v1_CO * del_h_f_CO + v1_H2 *del_h_f_H2 + v1_CH4 * del_h_f_CH4 + v1_H2O * del_h_f_H2O) * 1000 ;
del_g_f_2 = (v2_CO2 * del_g_f_CO2 + v2_H2 *del_g_f_H2 + v2_CH4 * del_g_f_CH4 + v2_H2O * del_g_f_H2O) * 1000 ;
del_h_f_2 = (v2_CO2 * del_h_f_CO2 + v2_H2 *del_h_f_H2 + v2_CH4 * del_h_f_CH4 + v2_H2O * del_h_f_H2O) * 1000;
Del_A_1 =  v1_CO * A_CO + v1_H2 * A_H2 + v1_CH4 * A_CH4 + v1_H2O * A_H2O  ;
Del_B_1 =  v1_CO * B_CO + v1_H2 * B_H2 + v1_CH4 * B_CH4 + v1_H2O * B_H2O  ;
Del_C_1 =  v1_CO * C_CO + v1_H2 * C_H2 + v1_CH4 * C_CH4 + v1_H2O * C_H2O  ;
Del_D_1 =  v1_CO * D_CO + v1_H2 * D_H2 + v1_CH4 * D_CH4 + v1_H2O * D_H2O  ;
Del_A_2 = v2_CO2 * A_CO2 + v2_H2 * A_H2 + v2_CH4 * A_CH4 + v2_H2O * A_H2O  ;
Del_B_2 = v2_CO2 * B_CO2 + v2_H2 * B_H2 + v2_CH4 * B_CH4 + v2_H2O * B_H2O  ;
Del_C_2 = v2_CO2 * C_CO2 + v2_H2 * C_H2 + v2_CH4 * C_CH4 + v2_H2O * C_H2O  ;
Del_D_2 = v2_CO2 * D_CO2 + v2_H2 * D_H2 + v2_CH4 * D_CH4 + v2_H2O * D_H2O  ;


K_298_1 = exp( - del_g_f_1 / (R * T_ref)) ;
K_298_2 = exp( - del_g_f_2 / (R * T_ref)) ;
disp(" Example: 9.18   Page no : 470") ;

for i = 1:12 
  X = (-del_h_f_1 / R + Del_A_1 * T_ref + Del_B_1 / 2 * T_ref^2 + Del_C_1 /3* T_ref^3- Del_D_1 / T_ref) * (1/M(i,1) - 1/T_ref) + Del_A_1*log(M(i,1) / T_ref)+ Del_B_1 / 2 * (M(i,1) - T_ref) + Del_C_1 / 6 *(M(i,1)^2 - T_ref^2) + Del_D_1 / 2* (1/(M(i,1)^2) - 1/(T_ref^2));
  
  M(i,2) = K_298_1 * exp(X) ;
  
  Y = (-del_h_f_2 / R + Del_A_2 * T_ref + Del_B_2 / 2 * T_ref^2 + Del_C_2/3* T_ref^3- Del_D_2 / T_ref) * (1/M(i,1) - 1/T_ref) + Del_A_2 * log(M(i,1) / T_ref)+ Del_B_2 / 2 * (M(i,1) - T_ref) + Del_C_2 / 6 *(M(i,1)^2 - T_ref^2) + Del_D_2 / 2* (1/(M(i,1)^2) - 1/(T_ref^2));
  
  M(i,3) = K_298_2 * exp(Y) ;
 function y = f918(R),
      s1 = R(1) ;
      s2 = R(2) ;
  y(1) = (s1 * (3 * s1 + 4 * s2)^3) / ((5 + 2 * s1 + 2 * s2)^2 * (1 - s1 -s2) * (4 - s1 - 2 * s2)) * P^2 - M(i,2) ;
  y(2) = (s2 * (3 * s1 + 4 * s2)^4) / ((5 + 2 * s1 + 2 * s2)^2 * (1 - s1 -s2) * (4 - s1 - 2 * s2)^2) * P^2 - M(i,3) ;
endfunction
  z = fsolve([0.0001;0.0001],f918)  ;
  M(i,4) = z(1) ;
  M(i,5) = z(2) ; 
  M(i,6) = (1 - M(i,4) - M(i,5)) / (5 + 2 * M(i,4) + 2 * M(i,5)) ;
  M(i,7) = (4 - M(i,4) - 2 * M(i,5)) / (5 + 2 * M(i,4) + 2 * M(i,5)) ;
  M(i,8) = (3 * M(i,4) + 4 * M(i,5)) / (5 + 2 * M(i,4) + 2 * M(i,5)) ;
  M(i,9) = M(i,4) / (5 + 2 * M(i,4) + 2 * M(i,5)) ; 
  M(i,10) = M(i,5) / (5 + 2 * M(i,4) + 2 * M(i,5)) ; 
  
end 

disp("     T              K1               K2              S1               S2             y_CH4     y_H2")

for i = 1:10                       // For convenient display of solution .
    for j = 1:7
        n1(i,j) = M(i,j) ;
    end
end
for i = 1:10                      // For convenient display of solution .
    for j = 1:3
        n2(i,j) = M(i,j+7) ;
    end
end
disp(n1) ;
disp("      y_H20          y_CO          y_CO2  ") ;
disp(n2) ;
for i = 1:10
    for j = 1:10
        N(i,j) = M(i,j) ;
    end
end

plot(N(:,1) , N(:,4),"+") ;
plot(N(:,1), N(:,5),".") ;
xtitle("Figure E9.18    Extent of reaxn vs temp","Temperature(K)","S") ;
legend("S1","S2") ;

h = figure(1) ;
clf() ;
set(h,"background",35) ;
plot(N(:,1) , N(:,6), "o-") ; 
plot(N(:,1) , N(:,7), "s-");
plot(N(:,1) , N(:,8), "^-") ;
plot(N(:,1) , N(:,9), "x-") ;
plot(N(:,1) , N(:,10), ".-") ;
legend("y_CH4 ","y_H2 ","y_H2O ","y_CO ","y_CO2") ;

xtitle("Figure E9.18     mole fractn vs temp","Temp","mole fraction") ;