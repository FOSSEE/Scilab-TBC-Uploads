//CHAPTER 6- MAGNETIC CIRCUITS
//Example 1

disp("CHAPTER 6");
disp("EXAMPLE 1");

//VARIABLE INITIALIZATION
lA=17/100;        //length of A in meters (lA is calculated in the solution in the book; here it is initialised directly for the sake of convinience)
l=3/100;          //in meters
lg=2/1000;        //width of air-gap in meters
N=1000;           //number of turns
AB=10/100;        //in meters
BC=20/100;        //in meters
CD=10/100;        //in meters
I=1;              //exciting current in Amperes
murA=1000;        //relative permeability of part A
murB=1200;        //relative permeability of part B
mu0=4*%pi*10^(-7);//absolute permeability in Henry/meters

//SOLUTION

//solution (i)
ar=l*l;           //area of cross-section        
rA=lA/(mu0*murA*ar);
disp(sprintf("(i) Reluctance of part A is %.3E AT/Wb",rA));
lB=(AB-(l/2))+(BC-l)+(CD-(l/2));
rB=lB/(mu0*murB*ar);
disp(sprintf("Reluctance of part B is %.3E AT/Wb",rB));

//solution (ii)
lg=2*lg;
murg=1;
rg=lg/(mu0*murg*ar);
disp(sprintf("(ii) Reluctance of the two air gaps is %.3E AT/Wb",rg));

//solution (iii)
rT=rA+rB+rg;
disp(sprintf("(iii) Total reluctance is %.2E AT/Wb",rT));

//solution (iv)
mmf=N*I;
disp(sprintf("(iv) MMF is %d AT",mmf));

//solution (v)
totFlux=mmf/rT;
disp(sprintf("(v) Total flux is %.3E Wb",totFlux));


//solution (vi)
b=totFlux/ar;
disp(sprintf("(vi) Flux density is %.3f Wb/m^2",b));

//Answers of (v) and (vi) do not match due to calculation mistake in the book

//END



