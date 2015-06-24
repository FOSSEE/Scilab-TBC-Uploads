//Engineering and Chemical Thermodynamics
//Example 8.11
//Page No:390

clear ; clc ;
//Given
R = 8.314 ;
T = 10 + 273.15 ; //[K]
x1 = [0 ,0.0610 ,0.2149 ,0.3187 ,0.4320 ,0.5246 ,0.6117 ,0.7265 ,0.8040 ,0.8830 ,0.8999 ,1] ; //From table E8.9A
P_exp = [6344 ,6590 ,6980 ,7140 ,7171 ,7216 ,7140 ,6974 ,6845 ,6617 ,6557 ,6073 ,6073] ; //From table E8.9A
y1 = [ 1 ,0.0953 ,0.2710 ,0.3600 ,0.4453,0.5106 ,0.5735 ,0.6626 ,0.7312 ,0.8200 ,0.8382, 0 ] ;//From table E8.9A
P_1_sat = 6073 ; //[Pa]
P_2_sat = 6344 ; //[Pa]

n = 0 ;
for i = 2:11
    x2(1,i) = 1 - x1(1,i) ;
    y2(1,i) = 1 - y1(1,i) ;
    g_E(1,i) = R * T *( x1(1,i) * log (( y1(1,i) * P_exp(1,i)) / (x1(1,i)* P_1_sat)) + x2(1,i) * log((y2(1,i) * P_exp(1,i)) / (x2(1,i) * P_2_sat)) ) ;
    n = n + g_E(1,i) / ((x1(1,i) * x2(1,i)) * 10) ;
    ydata(1,i-1) = (g_E(1,i)/(x1(1,i)*x2(1,i)));
    xdata(1,i-1) = x1(1,i) - x2(1,i) ;
end
m= 0 ; n=0 ; o = 0 ; p= 0 ;N = 10 ;
for i = 2:11
    m = m + g_E(1,i) * (2 * x1(1,i) - 1) / ( x1(1,i) *  x2(1,i)) ;
    n = n + g_E(1,i) / ( x1(1,i) *  x2(1,i)) ;
    o = o + (2 * x1(1,i) - 1)  ;
    p = p + (2 * x1(1,i) - 1)^2 ;
end
x_bar = o / N ;
y_bar = n / N ;
a1 = (N * m - n * o)/(N * p - o^2) ;
a0 = y_bar - a1 * x_bar ;

for i = 1:10
      ydata2(1,i) = a0 + a1*xdata(1,i) ;
end
plot(xdata,ydata,"+") ;
plot(xdata,ydata2) ;
xtitle("Figure E8.11","x1-x2","g_E/x1*x2") ;
disp(" Example: 8.11   Page no : 390") ;
printf("\n      From average ,  the value of A = %d J/mol\n",n/10) ;
printf("\n      From linear regression best fit line the values of A and B are     %.1f J/mol    &     %.1f J/mol   respectively .",a0 , a1) ;
//Readers can refer figure E8.11 .