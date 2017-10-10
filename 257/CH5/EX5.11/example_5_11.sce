syms G1 G2 G3 G4

//for C1/R1

a=(-G2)*G3*G4
Y=G1/(1+(G1*a))

disp(Y," C1/R1 = ")

// for C2/R1

x=(-G1)*G2*G3
O= (x)/(1+(x*G4))

disp(O,"C2/R1 = ")

//for C1/R2

k=(-G1)*G2*G4
K=k/(1+(k*G3))
 disp(K,"C1/R2 = ")

//for C2/R2

f=(-G1)*G3*G4
Z= G2/(1+(G2*f))
disp(Z,"C2/R2 = ")
 