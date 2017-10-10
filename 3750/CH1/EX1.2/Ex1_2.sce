//Strength Of Material By G.H.Ryder
//Chapter 1
//Example 2
// To Calculate Strain energy
P=10,000;    //Tension 100d, Unit in KN
E=205,000;   //Young's Modulus, Unit in N/mm^2
RootDia=16.6; //Root diameter of thread, Unit in mm
AreaOfCore=%pi*(RootDia^2)/4   //Unit in mm^2
ShankDia=20; // Diameter at Shank, Unit in mm
AreaAtShank=%pi*(ShankDia^2)/4; //Unit in mm^2
ThreadLength=25;   //Unit in mm
ShankLength=50;   // Unit in mm
StressInScrew=P/AreaOfCore;   //Unit in N/mm^2
StressInShank=P/AreaAtShank;   //Unit in N/mm^2
TotalSE=(StressInScrew^2)*AreaOfCore*ThreadLength+(StressInShank^2)*(AreaAtShank*ShankLength)/(2*E);
// Total Strain Energy, Unit in N/mm^2
//If Shank is turned down to root diameter(16.6mm) for same maximum stress 
StressInBolt=P/AreaOfCore;  //Unit in N/mm^2
NewSE=((StressInBolt^2)*(AreaOfCore)*(ThreadLength+ShankLength))/(2*E)
//Strain Energy after shank is turned down to root diameter, Unit in Nmm
printf("Total Strain Energy=%f Nmm\n", TotalSE)
printf("Strain Energy after Shank is turned down to root diameter=%f Nmm\n", NewSE)


