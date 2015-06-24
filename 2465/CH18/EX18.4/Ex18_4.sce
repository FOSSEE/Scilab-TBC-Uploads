//Chapter-18,Example 4,Page 406
clc();
close();

V1= 25     //volume of H2SO4

V2 =15     //volumeof NaOH

v= V1*0.1-V2*0.1    //volume of H2SO4  consumed

//100 cc H2SO4 ==17 g NH3 == 14 g N
//1 cc H2SO4 = 14/1000 g N =0.014 g N
//0.014 g N is present in 1 g coal

N= 0.014*100

printf("the percentage of nitrogen is %.2f ",N)
