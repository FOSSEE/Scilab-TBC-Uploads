clc
//initialisation of variables
st= 1200 //psi
sc= 100 //psi
h= 12 //in
b= 4 //in
//CALCULATIONS
I= b*h^3/12
P1= st*I/(b*12*(h/2))
P2= 2*sc*b*12/3
if (P1<P2) 
    printf ('Safe value of p= %.f lB',P1)
else 
        printf ('Safe value of p= %.f lB',P2)
    
end
