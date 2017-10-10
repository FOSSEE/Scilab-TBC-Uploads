//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 36

disp("CHAPTER 7");
disp("EXAMPLE 36");

//VARIABLE INITIALIZATION
va=100000;                               //apparent power
v1=440;                                  //primary voltage in Volts
v2=11000;                                //secondary voltage in Volts
f=50;
//loads
pf=1;
eff1=0.985;                              // at full load at 0.8pf
eff2=0.99;                               //at half full load at unity pf
pf1=0.8;                                 // 
pf2=1;                                   //  
//
//SOLUTION  
loss1=(1-eff1)*va*pf1/eff1;                    //=Pc+Pcu losses
loss2=(1-eff2)*va*(1/2)*pf2/eff2;                    //=Pc+Pcu losses
//simultaneous equation to be solved
//eq 1: Pc+Pcu=loss;
//fractipon of copper/ ohmic losses
f=(1/2)^2;                              // 60% of full load
//the 2nd equation is Pc+f*Pcu=loss
//now the matrix
M=[1,1;1,f];                            //Pc+Pcu=loss1; Pc+(1/2)^2*Pcu=loss2: 1,1,; 1,f
A=[loss1,loss2];
Mi=inv(M);
Ans=A*inv(M);
Pc=Ans(1,1);
Pcu=Ans(1,2);
disp(sprintf("The Pc is %f W",Pc));
disp(sprintf("The Pcu is %f W",Pcu));
//
//maximumefficiency at farction x times the full load;and then f.Pcu=Pc
x=sqrt(Pc/Pcu);
disp(sprintf("The maximum efficiency would occur at a load of  %f VA",x*va));
I1=va/v1;
I1maxEff=I1*x;
disp(sprintf("The current at maximum efficeincy is %f A",I1maxEff)); 
disp(" "); 
// 
//END
