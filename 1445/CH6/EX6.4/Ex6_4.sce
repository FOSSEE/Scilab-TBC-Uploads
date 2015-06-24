//CHAPTER 6- MAGNETIC CIRCUITS
//Example 4

disp("CHAPTER 6");
disp("EXAMPLE 4");

//VARIABLE INITIALIZATION
di=10;                          //diameter of iron ring in cm
dr=1.5;                         //diameter of iron rod in cm
mui=900;                        //relative permeability of rod
mu0=4*%pi*10^(-7);              //absolute permeability in Henry/m
lg=5/10;                        //length of air-gap in cm
N=400;                          //number of turns
I=3.4;                          //current through the winding in Amperes

//SOLUTION
li=(di*%pi)-lg;                 //length of iron path
area=((dr^2)*%pi)/4;            //area of iron cross-section

//solution (a)
mmf=(4*%pi*N*I)/10;             //in gilberts, since 1 AT=(4*pi)/10
mmf=round(mmf);                 //to round off the value
disp(sprintf("(a) MMF is %d Gilberts",mmf));

//solution (b)
//tot reluctance = iron reluctance + air gap reluctance(mur=1 for air)
totR=(li/(area*mu0*mui))+(lg/(area*mu0*1)); 
disp(sprintf("(b) The total reluctance is %.3E Gilberts/Maxwell",totR));

//solution (c)
phi=mmf/totR;
disp(sprintf("(c) The flux in the circuit is %.3f Maxwell",phi));
 
//solution (d)
b=phi/area;
disp(sprintf("(d) The flux density in the circuit is %.3f Gauss",b));

//Answers of (b), (c) & (d) are different because absolute permeability is not included in (b)

//END

