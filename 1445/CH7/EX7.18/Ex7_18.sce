//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 18

disp("CHAPTER 7");
disp("EXAMPLE 18");

//400kVA distribution transformer variously loaded during day
//VARIABLE INITIALIZATION 
va=400000;                      //
ironLoss=1500;                  // Watts
cuLoss=4000;                    //Watts
//during the day frommidnight to midnight is as below:
h1=6;                           //first 6 hours from midnight to 6 hrs
load1=0;
pf1=0;
h2=6;                           //next 6 hours from 6 am to noon
load2=100000;                   //kVA converted to VA
pf2=0.8;
h3=5;                           //next from noon to 5 pm  
load3=400000;
pf3=0.8;
h4=3;                           //next from  5 pm to 8 pm  
load4=300000;
pf4=0.7;
h5=4;                           //next from  8 pm to midnight
load5=200000;
pf5=0.85;
//
//SOLUTION
// 
//energy loss at any load=(VA output/VA rated)^2 .Full load cuLoss
loss1=h1*load1;
loss2=h2*(load2/va)^2*cuLoss;
loss3=h3*(load3/va)^2*cuLoss;
loss4=h4*(load4/va)^2*cuLoss;
loss5=h5*(load5/va)^2*cuLoss;
//loss in 24 hours
loss24=loss1+loss2+loss3+loss4+loss5;
//disp(sprintf("The all day loss is %f ",loss24)); 
Pout=h1*load1*pf1+h2*load2*pf2+h3*load3*pf3+h4*load4*pf4+h5*load5*pf5;
//disp(sprintf("The all day energy output is %f ",Pout)); 
Pin=Pout+ironLoss*24+loss24;
eff=Pout*100/Pin;
disp(sprintf("The all day percent efficiency is %.2f ",eff)); 
disp(" "); 
// 
//END
