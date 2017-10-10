//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 17

disp("CHAPTER 7");
disp("EXAMPLE 17");

//VARIABLE INITIALIZATION 
va=200000;                      //
ironLoss=1000;                  // Watts
cuLoss=2000;                    //Watts
pf=0.8;
//
//SOLUTION
// 
Pout=va*pf;
loss=ironLoss+cuLoss;
Pin=Pout+loss;
eff=Pout*100/Pin;
disp("SOLUTION (a)");
disp(sprintf("The percent efficiency at full load is %f",eff)); 
//
//at half load
Pout=va*pf/2;
loss=ironLoss+cuLoss*(1/2)^2;
Pin=Pout+loss;
eff=Pout*100/Pin;
disp("SOLUTION (b)");
disp(sprintf("The percent efficiency at full load is %f",eff)); 
//
//fraction x of copperloss=ironloss for maximum efficiency
//x^2.cuLoss=ironLoss
x=sqrt(ironLoss/cuLoss);
Pout=x*va*pf;
loss=ironLoss+cuLoss*x^2;
Pin=Pout+loss;
eff=Pout*100/Pin;
disp("SOLUTION (c)");
disp(sprintf("The percent efficiency at %f load is %f ",x,eff)); 

disp(" "); 
// 
//END
