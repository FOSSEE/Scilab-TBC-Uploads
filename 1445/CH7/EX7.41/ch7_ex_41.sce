//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 41

disp("CHAPTER 7");
disp("EXAMPLE 41");

//VARIABLE INITIALIZATION
v1=550;                         //primary voltage in Volts
v2=440;                         //secondary voltage in Volts
p=400*1000;                     //in Watts
pf=0.8;                         //power factor(lagging)

//SOLUTION

//solution (a)
I2=p/(sqrt(3)*v2*pf);
I1=I2*(v2/v1);                 //since I1:I2=N2:N1
I=I2-I1;                       //in sections Oa, Ob and Oc
disp(sprintf("(a) The current flowing in sections Oa, Ob and Oc is %f A",I));
disp(sprintf("The current flowing in sections aA, bB and cC is %f A",I1));

//solution (b)
p_o=p*(1-(v2/v1));             //k=v2/v1
disp(sprintf("(b) The power transferred by transformer action %f kW",p_o/1000));

//solution (c)
p_d=p-p_o;
disp(sprintf("(c) The power conducted directly %d kW",p_d/1000)); 

//END                                               
