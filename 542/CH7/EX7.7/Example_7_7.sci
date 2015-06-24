clear;
clc;
printf("\n Example 7.7");
//Case 1

                 //dV/dt = A^2(-deltaP)/vru(V + AL/v) = a/V+b
                 //For constant rate filtration:
                 //Vo/to = a/Vo + b
                 //Vo^2 + bVo = ato
                 //For constant pressure filtration
                 //0.5(V^2 - Vo^2)+b(V-Vo)=a(t-to)
                 //to=600s,t-to=3600s,Vo=V/4
                 //V^2/16 +bV/4 = 600a
                 //o.5(V^2 - V^2/16)+b(V-V/4)=3600a
                 //3600a = (15/32)V^2 +3/4(bV) = 3/8(V^2) + 3/2(bV)
                 //b = V/8
                // a = (V^2/16 + V^2/32)/600 = (3/19200)V^2 
                //Total cycle time = 900 + 4200 = 5100secs
                //Filtration rate = V/5100 = 0.000196V

//Case 2
                //V1/t1 = a/ (V1 +b/4)=Vo/to=a/(Vo+b)
                //0.5*(49/64V^2 - V1^2)+b/4(7/8V-V1)=a(t-t1)
                //V/2400 = (3/19200)V^2/(V1+V/32)
                //t1 = (to/Vo)V1
  t1 = 600/(1/4)*(11/32);
  printf("\n t1 = %dsecs",t1);
  //Substituting gives 
  deltaT = (19200/3)*(784-121+34)/2048;
  printf("\n t -t1 = %d secs",deltaT); 
  Cycle_time = 180+900+t1+deltaT;
  printf("\n cycle time = %d secs",Cycle_time);
  Increase = (0.000214 - 0.000196)/(0.000196)*100;
  printf("\n Increase in filtration rate is %.1f per cent",Increase);
  
  
  
  
  
  
  
  
  
  
  
  
  
  