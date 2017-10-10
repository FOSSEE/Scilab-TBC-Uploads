//Strength Of Material By G.H.Ryder
//Chapter 1
//Example 10
//(a) To Calculate exiting stress in steel
//(b)To Calculate final stress in steel in steel if additional end trust is applied

clc();

//Initialization of variables
Ds=18;  //Diameter of steel rod, Unit in mm

Dc=39;  //Outside diameter of copper sleeve, Unit i mm
dc=24;//Inside diameter of copper sleeve, Unit in mm
EsbyEc=2;//Ratio of Young's modulus of steel to young's of copper
d=1.5//depth of copper removed, Unit in mm


//Computations
SigmaS1=10;//Tension stress set up in steel, Unit in N/mm^2

As=(%pi/4)*Ds^2;  //Cross section Area of steel rod, Unit in mm^2
Ac=(%pi/4)*(Dc^2-dc^2);  //Cross section Area of copper sleeve, Unit in mm^2
Acr=(%pi/4)*((Dc-2*d)^2-dc^2);  //Area of reduce sectoin of copper, Unit in mm^2
SigmaC1=(As/Ac)*SigmaS1;  //Stress set up in copper tube, Unit in N/mm^2

//(a)When tube reduced in area for half it's length
//Let SigmaC2 be stress in reduced secton in copper  & SigmaCdash in the reminder
//Let SigmaS2 be stress in rod
//Equilibrium equation:  Load on tube=Load on Rod
         //SigmaC2*Acr=SigmaC2dash*Ac=SigmaS2*As
         //SigmaC2=(As/Acr)*SigmaS2......(i)
         //SigmaC2dash=(As/Ac)*SigmaC2.....(ii)
         
         
//Compatibility Equation: Reduction in lenght of rod=Reduction in length of tube
        //(SigmaS1-SigmaS2)*l/Es=(SigmaC2-SigmaC1)*l/(2*Ec) + (SigmaC3dash-SigmaC1)*l/(2*Ec)
        
//Solving Equilibrium Equations and compatibility equation  
SigmaS2=(SigmaS1+EsbyEc*SigmaC1)/(1+As*EsbyEc/(2*Acr)+As*EsbyEc/(2*Ac));   //Unit in N/mm^2       The answer vary due to round off error

//Result (a)
printf("The exiting stress in steel, SigmaS2= %.1fN/mm^2\n",SigmaS2)



//(b)An additonal end thrust of 5000N is applied

P=5000;//Additonal end thrust, Unit in N
//Let SigmaS3 And SigmaC3 be stresses in reduce section of steel and copper respectively
//Let SigmaC3dash be stress in remainder section of copper
   
   
   //Equlibrium Equation:
         //P=SigmaC3*Acr-SigmaS3*As
         //SigmaC3=P/Acr+(As/Acr)*SigmaS3............(iii)
         //SigmaC3dash=P/Ac+(As/Ac)*SigmaS3............(iv)


SigmaS3=(SigmaS1+EsbyEc*SigmaC1-(EsbyEc/2)*(P/Acr+P/Ac))/(1+EsbyEc*As/(2*Acr)+EsbyEc*As/(2*Ac));      //Unit in N/mm^2,      The answer vary due to round off error   

//Result (b)
printf("Final Stress in Steel,SigmaS3=%.1f N/mm^2",SigmaS3)
