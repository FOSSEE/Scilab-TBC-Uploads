
clc 
// Given that
//True stress=100000*(True strain)^0.5

// Sample Problem on page no. 63

printf("\n # Calculation of Ultimate Tensile Strength # \n")
//from the data given
n=0.5
E=0.5
K=100000
Truestress=K*((E)^n)
//let An(area of neck)/Ao=t
//from log(Ao/An)=n
t=exp(-n)
UTS=Truestress*exp(-n)//from the expression UTS= P/Ao where P(Maximum Load)=Truestress*An
printf("\n\n Ultimate Tensile Strength = %f psi",UTS)
//answer in the book is approximated to 42850 psi 





