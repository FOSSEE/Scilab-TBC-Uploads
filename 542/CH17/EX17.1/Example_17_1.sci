//Example 17.1
clear; 
clc;
printf("\n Example 17.1");
//For 1 m3 of pellet with a voidage ε, then
        //Number of particles = (1 − ε)/(π/6)(15 × 10^−9)^3
        //Surface area per unit volume = (1 − ε)π(15 × 10−9)2/(π/6)(15 × 10^−9)^3
        //= 6(1 − ε)/(15 × 10^(−9)) m^2/m^3
        //1 m^3 of pellet contains 2290(1- ε)kg solid and hence:
        specific_surface = 6/(15*10^(-9)*2290);
        printf("\n Specific surface = %.3f*10^5 m^2/kg ",specific_surface*10^(-5));
//(a) Using the BET isotherm
        
        //y = (P/Po)/V *10^(-6)
        y = [1500 2660 3576 4283 4613 4615];
        //y1 = (P/Po)/V *(1-(P/Po)
        y1 = [1666 3333 5109 7138 9226 11358];
        //x = P/Po
        x = [0.1 0.2 0.3 0.4 0.5 0.6];
        plot2d(x,y,style = 2);
        xtitle("","P/Po","(P/Po)/(V *10^(-6)) or (P/Po)/(V *(1-(P/Po))");
        plot2d(x,y1,style=3);
        legend("Langmuir isotherm","(BET) isotherm");

       //intercept, 1/VB = 300, and slope, (B − 1)/VB = 13,902 
       B = (13902/300)+1;
       printf("\n B = %.2f ",B);
       V = 1/(300*47.34);       
       //Total surface area
       S = [(70.4*10^(-6)*808*6.2*10^(26)*0.162*10^(-18))]/28;
       printf("\n Total surface area = %.3f *10^5 m^2/kg",S*10^(-5));
        
//(b) Using the Langmuir form of the isotherm

       //Slope 1/V = 13,902
       V = 1/13902;
       printf("\n V = %.1f*10^(-6)m^3/kg",V*10^6);
       //which agrees with the value of the BET isotherm
   //It may be noted that areas calculated from the isotherm are some 20 per cent greater than the geometric surface, probably due to the existence of some internal surface within the particles














      
        
        