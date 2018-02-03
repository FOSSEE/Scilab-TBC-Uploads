clear
//

//variable declaration

Db=(20)                     //diameter of brass rod,mm
Dse=(40)                    //external diameter of steel tube,mm
Dsi=(20)                    //internal diameter of steel tube,mm
Es=(2*100000 )              //Young's modulus steel, N/mm^2
Eb=(1*100000 )              //Young's modulus brass, N/mm^2
alphas=(0.0000116)          //coeffcient of expansion of steel,/°C
alphab=(0.0000187)          //coeffcient of expansion of brass,/°C
t=60                             //raise in temperature, °C
As=%pi*((Dse**2)-(Dsi**2))/4  //Area of steel tube** mm^2
Ab=%pi*((Db**2))/4                //Area of brass rod**mm^2
L=1200                           //length,mm
//Since free expansion of brass  is more than free expansion of steel , compressive force Pb develops in brass and tensile force Ps develops in steel to keep the final position at CC 

//Horizontal equilibrium condition gives Pb = Ps, say P. 

P=((alphab-alphas)*t*L)/((L/(As*Es))+(L/(Ab*Eb)))

ps=P/As
pb=P/Ab

printf("\n stress in steel= %0.2f  N/mm^2",ps)
printf("\n Stress in brass= %0.2f  N/mm^2",pb)

//the pin resist the force P at the two cross- sections at junction of two bars.

Shearstress=P/(2*Ab)
printf("\n Shear stress in pin %0.2f  N/mm^2",Shearstress)
