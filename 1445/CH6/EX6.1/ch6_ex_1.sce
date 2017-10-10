//CHAPTER 6- MAGNETIC CIRCUITS
//Example 1

disp("CHAPTER 6");
disp("EXAMPLE 1");

//VARIABLE INITIALIZATION
lA=17/100;                   //length of part A in m
l=3/100;                     //in m
lg=2/1000;                   //length of air-gap in m
N=1000;                      //number of turns
AB=10/100;                   //in m
BC=20/100;                   //in m
CD=10/100;                   //in m
I=1;                         //exciting current in Amperes
murA=1000;                   //relative permeability of part A
murB=1200;                   //relative permeability of part B
mu0=4*%pi*10^(-7);           //absolute permeability in Henry/m

//SOLUTION

//solution (i)
ar=l*l;            
rA=lA/(mu0*murA*ar);
disp(sprintf("(i) Reluctance of part A is %E AT/Wb",rA));

lB=(AB-(l/2))+(BC-l)+(CD-(l/2));
rB=lB/(mu0*murB*ar);
disp(sprintf("Reluctance of part B is %E AT/Wb",rB));

//solution (ii)
lg=2*lg;
murg=1;
rg=lg/(mu0*murg*ar);
disp(sprintf("(ii) Reluctance of the two air gaps is %E AT/Wb",rg));

//solution (iii)
rT=rA+rB+rg;
disp(sprintf("(iii) Total reluctance is %E AT/Wb",rT));

//solution (iv)
mmf=N*I;
disp(sprintf("(iv) MMF is %d AT",mmf));

//solution (v)
totFlux=mmf/rT;
disp(sprintf("(v) Total flux is %E Wb",totFlux));


//solution (vi)
b=totFlux/ar;
disp(sprintf("(vi) Flux density is %f Wb/m^2",b));

//Answers of (v) and (vi) do not match due to calculation mistake in the book

//END



