//Chapter-10, Example 10.24, Page 448
//=============================================================================
clc
clear

//INPUT DATA
Q=79;//Reduction in net radiation from the surfaces 
e1=0.05;//Emissivity of the screen
e2=0.8;//Emissivity of the surface

//CALCULATIONS
n=(((Q*((2/e2)-1))-((2/e2)+1))/((2/e1)-1));//Number of screens to be placed between the two surfaces to achieve the reduction in heat exchange

//OUTPUT
mprintf('Number of screens to be placed between the two surfaces to achieve the reduction in heat exchange is%3.0f',n)

//=================================END OF PROGRAM==============================
