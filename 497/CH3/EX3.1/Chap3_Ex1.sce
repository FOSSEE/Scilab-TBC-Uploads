//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-3, Example 1, Page 68
//Title: Size Measure of Nonuniform Solids
//==========================================================================================================
clear
clc

//INPUT
weight = [0;60;150;270;330;360];// Weight in grams for the oversized particles
psize = [50;75;100;125;150;175];//PSD in micrometers

//CALCULATION
len = length(psize); // To obtain the size of input array
// Computation of sauter mean diameter for the given PSD
i = 1;
while i<len
        dpi(i)=(psize(i,:)+ psize(i+1,:))/2;
        weightf(i)=(weight(i+1)-weight(i))/weight(6);    
        dp(i)=weightf(i)/dpi(i);    
        i=i+1;
end                     
dpbar=1/sum(dp);//Calculation of average particle daimeter Eq.(15)

//OUTPUT
mprintf('\n The Sauter mean diameter of the material with the given particle size distribution = %f micrometer',dpbar);

//====================================END OF PROGRAM ======================================================