//Engineering and Chemical Thermodynamics
//Example 4.1
//Page no :175

clear ; clc ;
//Let
H2O = 1 ;
NH3 = 2 ;
CH4 = 3 ;
CH3Cl = 4 ;
CCl4 = 5 ;

M_11 = 1.85 ; alp_12 = 14.80 ;  I_13 = 12.62 ;
M_12 = 1.47 ; alp_22 = 22.20 ;  I_23 = 10.07 ;
M_31 = 0.00 ;    alp_32 = 26.00 ;    I_33 = 12.61 ;
M_41 = 1.87 ; alp_42 = 45.30 ;  I_43 = 11.26 ; 
M_51 = 0.00 ;    alp_52 = 105.0 ;   I_53 = 11.47 ;

k =1.38 * 10^-16 ; //[ J/K]
T = 298 ; //[K]
A =[M_11 , alp_12 , I_13;
M_12 , alp_22 , I_23  ;
M_31 , alp_32 , I_33  ;
M_41 , alp_42 , I_43  ; 
M_51 , alp_52 , I_53  ;] ;
disp(" Example: 4.1   Page no : 175") ;
disp(" Molecule       M       alp*10^25        I          C*10^60      Cd_d      Cind     Cdis") ;
for i=1:5
    A(i,5) = ceil( 2/3 * A(i,1)^4 / (k * T) * 10^-12) ;
    A(i,6) = ceil(2 * A(i,2) * A(i,1)^2 * 10^-1) ; 
    A(i,7) = ceil(3/4 * A(i,2)^2 * A(i,3) * 1.6 * 10^-2) ;
    A(i,4) = ceil(A(i,5) +  A(i,6) +  A(i,7)) ; // ....E4.1D
end ;

printf("    H2O          %.2f        %.1f         %.2f         %d            %d        %d        %d ",A(1,1),A(1,2),A(1,3),A(1,4),A(1,5),A(1,6),A(1,7)) ;
printf("\n    NH3          %.2f        %.1f         %.2f         %d              %d        %d        %d ",A(2,1),A(2,2),A(2,3),A(2,4),A(2,5),A(2,6),A(2,7)) ;
printf("\n    CH4          %.2f        %.1f         %.2f         %d                %d         %d       %d ",A(3,1),A(3,2),A(3,3),A(1,4),A(3,5),A(3,6),A(3,7)) ;
printf("\n   CH3Cl        %.2f        %.1f         %.2f         %d            %d        %d       %d ",A(4,1),A(4,2),A(4,3),A(4,4),A(4,5),A(4,6),A(4,7)) ;
printf("\n   CCl4          %.2f      %.1f         %.2f        %d               %d          %d     %d \n",A(5,1),A(5,2),A(5,3),A(5,4),A(5,5),A(5,6),A(5,7)) ;

disp("       Even though it is non polar , CCl4 exhibit the largest intermolecular forces . It is due to the large polarizability accociated with the four Cl atom in CCl4 .") ;