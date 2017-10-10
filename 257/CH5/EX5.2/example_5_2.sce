syms G1 G2 G3 G4 G5 H5

//with X(s)=0

a= G2/(G2+1)
b= a*G3*(G5/(1+G5*H5))  //G5 and H5 are in a loop
c= b/(1+b)              //unity feedback
Y= G1*c

disp(Y,"R/S=")

//with R(s)=0

x=G2/(1+G2)
y=G5/(1+G5*H5)
z=x*(-G3)
Y2=y/(1-(z))

disp(Y2,"X/C = ")


