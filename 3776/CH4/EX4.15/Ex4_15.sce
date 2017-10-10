clear
//Given 
//AISC MANUALS
//approximated by three narrow tubes 
//J = Bbt^3
B = 0.33 // constant mentiones in AISC
//three rods 

//rod_1
t_1 = 0.605 //inch - Thickness 
b =  12.0 //inches - width 
J_1 = B*b*(t_1**3) //in^4 - Torsion constant 

//rod_2
t_2 = 0.605 //inch - Thickness 
b =  12 //inches - width 
J_2 = B*b*(t_2**3) //in^4 - Torsion constant 

//rod_3
t_3 = 0.390 //inch - Thickness 
b =  10.91 //inches - width 
J_3 = B*b*(t_3**3) //in^4 - Torsion constant 

//Equivalent
J_eq = J_1+J_2+J_3  //in^4 - Torsion constant 
printf("\n the Equivalent Torsion constant is  %0.2f in^4 ",J_eq)
