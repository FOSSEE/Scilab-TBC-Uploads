// Strength of Materials By G.H. Ryder
// Chapter 1
//Example 1

// To Calculate Young's Modulus, Stress at limit of proportion, the yield stress, ultimate stress, % elongation and %contraction.
clc();

//Given (from question) i.e. Initialization of variables
P=80000;      //load at limit of proportionality , unit in newton(N)
D= 2;       //original diameter, unit in cm
l=4;        // gauge length , unit in cm 
x=0.048;     //extension at limit of proportionality , unit in mm
Py=85000;    //Load at yield point , unit in newton (N)
Pmax=150000;   //maximum or ultimate load, units in newton(N)
l1=5.56;      //elongation, unit in cm
D1=1.58;      //contracted diameter at neck , unit in cm

//Calculations
A=%pi*100*(D^2)/4;  //Cross section area , unit in mm^2
E=(P*l*10)/(A*x);  //Youngs Modulus , unit in N/(mm^2)
stress1=P/A;      //Stress at limit of proportionality,unit in N/(mm^2) 
stressY=Py/A;       //yield stress N/(mm^2) ,unit in N/(mm^2) 
stressuts=Pmax/A;      //ultimate tensile stress,unit in N/(mm^2)  
el=(l1-l)*100/l;   //percentage elongation
co=(D^2-D1^2)*100/D^2;      //percentage contraction 

//Outputs
printf("Young Modulus = %.2fN/mm^2\n",E)    //The answers vary due to round off error
printf("stress at limit of proportionality = %.0fN/mm^2\n",stress1)    
printf("yield stress = %.0fN/mm^2\n",stressY)   

printf("ultimate tensile stress = %.2fN/mm^2\n",stressuts)    //The answers vary due to round off error
printf("percentage elongation = %.0f percent\n",el)
printf("percentage contraction = %.0f percent\n",co)      
