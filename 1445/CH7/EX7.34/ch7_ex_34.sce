//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 34

disp("CHAPTER 7");
disp("EXAMPLE 34");

//VARIABLE INITIALIZATION
va=50000;                               //apparent power
I2=200;                                 //secondary full load current
R1=0.55;
R2=0.023;
pf=0.8;
//turn ratio
K=1/5;
//SOLUTION  
R_dash_1=K^2*R1;
R_e2=R2+R_dash_1;
Pcu=I2^2*R_e2;
//cu loss at 2/3 of the load
Pcu23=(2/3)^2*Pcu;
Pc=Pcu23;                               //at maximum efficiency Pc=Pcu
//full load output
Pout=va*pf;
loss=Pc+Pcu;                            //at full load
Pin=Pout+loss;
eff=Pout*100/Pin;
disp(sprintf("The percent efficiency at full load is %f",eff)); 
disp(" "); 
// 
//END
