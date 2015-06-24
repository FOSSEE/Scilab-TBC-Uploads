clear;
clc;
printf("\n Example 16.1");
//For the first drying operation
w1 = 0.25;                 //in kg/kg
w = 0.10;                  //in kg/kg
wc = 0.15;                 //in kg/kg
we = 0.05;                 //in kg/kg
f1 = w1-we;                //in kg/kg
fc = wc - we;              //in kg/kg
f = w - we;                //in kg/kg

//x = mA
function[x]=TotalDryingTime(t)
    x = (1/t)*[(f1-fc)/fc + log(fc/f)];
    funcprot(0);
endfunction
printf("\n     mA = %.3f kg/sec",TotalDryingTime(15));

//For the second drying operation
w12 = 0.30;                  //in kg/kg
w2 = 0.08;                   //in kg/kg
wc2 = 0.15;                  //in kg/kg
we2 = 0.05;                  //in kg/kg
f12 = w12 - we2;             //in kg/kg
fc2 = wc2 - we2;             //in kg/kg
f2 = w2 - we2;               //in kg/kg

t1=(1/TotalDryingTime(15))*[(0.25-0.10)/0.10 + log(0.10/0.03)];
printf("\n The total drying time is then %.1f ksec or %.2f hr ",t1,t1*1000/3600);
