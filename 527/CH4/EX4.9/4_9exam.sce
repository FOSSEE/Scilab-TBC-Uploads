//Engineering and Chemical Thermodynamics
//Example 4.9
//Page no :199

clear ; clc ;
//Given 
P_c = 37.9 * 10^5 ;//[N/m^2] , From compressibility chart
T_c = 425.2 ;// [K , From compressibility chart
P = 50 * 10^5 ; //N/m^2]
T = 333.2 ;//[K]
R = 8.314 ;
z_0 = 0.2148 ; // Using interpolation from table C.1 and C.2
z_1 = -0.0855 ; // Using interpolation from table C.1 and C.2
w = 0.199 ;
m = 10 ;
MW = 0.05812 ;

// Using Redlich Kwong equation
a = (0.42748 * R^2 * T_c^2.5) / P_c ;
b = 0.08664 * R * T_c / P_c ;
A = P * T^(1/2) ;
B = -R * T^(3/2) ;
C = (a - P * T^(1/2) * b^2 - R * T^(3/2)*b) ;
D = - a * b;

mycoeff = [ D , C , B , A] ;
p = poly(mycoeff , "v" , "coeff" ); 
M = roots(p);

disp(" Example: 4.9   Page no : 199") ;
for i = 1:3
    sign(M(i,1)) ;
        if ans == 1 then
          V = m / MW *(M(i,1)) ;
          printf("\n       Using Redlich Kwong equation the volume is = %.3f m^3\n\n",V)
        end
end

// Using compressibility chart
z = z_0 + w * z_1 ; 
v = z * R * T / P ;
V = m / MW * v ;
          printf("       Using compressibility chart the volume is = %.3f m^3\n\n",V)
