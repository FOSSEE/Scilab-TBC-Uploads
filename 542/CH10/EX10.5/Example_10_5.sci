clear;
clc;
printf("\n Example 10.5");

//On the basis of 100 kg untreated solids
//In the underflow feed:
//0.35 kg oil is associated with each kg of exhausted livers.
printf("\n mass of livers fed=%d kg contaning %d kg oil",100/(1+0.35),100-74);
xA = 0.26;
printf("\n xA = %.2f",xA);
xs = 0;
//In the overflow feed, pure ether is used
ys =1.0;
xs = 0;
//Recovery = 90 per cent
printf("\n                     Exhausted livers      Oil         Ether");
printf("\n Underflow feed            %d               %d           -",74,26);
printf("\n Overflow feed             -                 -           %d",50);
printf("\n Underflow product         %d               %d          e(say)",74,2.6);
printf("\n Overflow product          -                %d          50-e",23.4);
printf("\n In the underflow product:");
printf("\n the ratio(oil/exhausted livers) = %.3f kg/kg",2.6/74);
printf("\n Ratio(ether/exhausted livers) = %.3f kg/kg",0.306);
printf("\n e = %.1f kg",0.306*74);
//In the overflow product:
printf("\n The mass of ether = %.1f kg",50-22.6);
printf("\n yA = %.2f",23.4/(23.4+27.4));
printf("\n ys = %.2f",1-23.4/(23.4+27.4));
printf("\n ");



























