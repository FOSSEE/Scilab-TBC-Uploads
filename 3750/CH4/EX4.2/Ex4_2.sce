//Strength Of Material By G.H.Ryder
//Chapter 4
//Example 2
//To calculate Percentage error in Poission's ratio
clc();

//Initialization of Variables
errorG=1/100; //Percentage error in determination of G
nu=0.25  //Correct value of Poission's Ratio

//Computations

//Gdash=(1+errorG)*G
GdashByG=1+errorG;  
//G*(1+nu)=Gdash*(1+nudash)
errornu=-errorG*(1+nu)*100/nu;  //approxiamate percentage error in Poission's ratio


//Alternative Method
//E=2*G*(1+nu)
//Since deltaE=0 as E does not vary
     //0=2*deltaG*(1+nu)+2*G*deltanu
deltaGbyG=1/100;   //percentage error in G
deltanu=deltaGbyG*(1+nu);   //Absolute error in Poission's Ratio
errornu=-deltanu*100/nu;   //percentage error in Poission's Ratio
printf("Error in Calculation in Poissions Ratio is about %.f percent",errornu)

