clear
//
//

//Initilization of Variables

//Flanges
b=200 //mm //Width
t=25 //mm //Thickness 

D1=500 //mm //Overall Depth
t2=20 //mm //Thickness of web

d=450 //mm //Depth of web

//Calculations

//Consider,Element of Thickness "y" at Distance "dy" from N.A 
//Let Bending stress "sigma_max"

//Stress on the element 
//sigma=y*(D*2**-1)*sigma_max   ..............(1)

//Area of Element
//A=b*dy       .................................(2)

//Force on Element 
//F=y*250**-1*sigma_max*b*dy

//Let M be the Moment of resistance
//M=y*250**-1*sigma_max*b*dy*y

//Moment of Resistance of top flange after simplification we gget
//M.R=2258333.3*f

//M.I of I section
I=1*12**-1*(b*D1**3-180*d**3)*10**-8

//Moment acting on section 
//After simplifying we get
//M=2865833.3*f

//Percentage moment resistance
M1=2258333.3*2865833.3**-1*100

//Percentage moment resisted by web
M2=100-M1

//Result
