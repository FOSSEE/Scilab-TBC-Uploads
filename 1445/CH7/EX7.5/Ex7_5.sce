//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 5

disp("CHAPTER 7");
disp("EXAMPLE 5");

//single phase transformer
//350 primary and 1050 secondary turns
//VARIABLE INITIALIZATION
N1=350;                       //number of turns on primary side
N2=1050;                      //number of turns on secondary side
v1=400;                       //primary voltage in Volts
f=50;                         //in Hertz
ar=50/10000;                  //cross-sectional area of core in m^2

//SOLUTION

//solution (i)
//emf1=sqrt(2).pi.f.Phimax.N1
//Phimax=Bm.Area, Bm=flux density
//Bm=e1/sqrt(2).pi.A.f.N1
Bm=v1/(sqrt(2)*%pi*ar*f*N1);
disp(sprintf("(i) The maximum flux density is %.4f Wb/m^2",Bm));

//solution (ii)
//e2/e1=n2/n1=K
K=N2/N1;
e2=K*v1;
disp(sprintf("(ii) The induced emf in the secondary winding is %d V",e2));

//END 
