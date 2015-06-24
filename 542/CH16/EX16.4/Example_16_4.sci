clear;
clc;
printf("\n Example 16.4");
//In 100 kg of feed

   //mass of water = 
   mw = 100*30/100;                  //mass of water in kg
   //mass of dry solids = 
   md = 100-30;                      //mass of dry solids
   
//and:
//For b kg water in the dried solids: 100b/(b + 70) = 15.5
b = poly([0],'b');
b1 = roots(100*b - 15.5*(b+70));
printf("\n water in the product ,b = %.1f kg",b1);

   //Initial water content 
   w1 = 30/70;            //Intial moisture content in kg/kg dry solids
   //Final moisture content
   w2 = (12.8/70);        //Final moisture content in kg/kg dry solids
   //water to be removed
   w3 = (30-12.8);        //water to be removed in kg

//Surface of drying
S = (0.03*70);            //Surface for drying in m^2
rate = (0.0007*2.1);      //Rate of drying in kg/sec

//As the final moisture content is above the critical value, all the drying is at this constant rate and the time of drying is:
t = 17.2/0.00147;
printf("\n As the final moisture content is above the critical value, all the drying is at this constant rate and the time of drying is: %d ksecs or %.2f hr",t,t/3600);










