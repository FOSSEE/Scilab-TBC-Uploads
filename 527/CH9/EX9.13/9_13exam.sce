//Engineering and Chemical Thermodynamics
//Example 9.13
//Page no :466

clear ; clc ;
//Given
E_0_c = 0.153 ; //[V]
E_0_a = -0.521 ; // [v]
T = 298 ; //[K]
z = 1 ;
F =96485 ; //[C/mol e-]
R =8.314 ; //[J/mol K ]

E_0_rxn = E_0_c + E_0_a ;
del_g_0_rxn = - z * F * E_0_rxn ;

K = exp( - del_g_0_rxn / ( R * T )) ;
disp(" Example: 9.13   Page no : 466") ;
printf("\n                The equilibrium constant = %.3g \n",K)
disp("               The equilibrium constant is small . So the etching will not proceed spontaneously . However if we apply work through application of an electrical potential , we can etch the     copper .")
