//variable initialization
z=2                                                                             //atomic no. of He+ ion
lembda=133.7*10^-9;                                                             //difference b/w the first lines of the Balmer and Lyman series (m)
n1=1
n2=2
n3=3

//calculation
R=(1/(lembda*z^2))*((1/((1/n2^2)-(1/n3^2)))-(1/((1/n1^2)-(1/n2^2))));           //Rudberg constant (m-1)

printf("\nR = %.3e m-1",R);
