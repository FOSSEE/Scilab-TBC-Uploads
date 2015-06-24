clc 
// Given that
hi=10//in mm height of specimen
ODi=30//in mm outside diameter 
IDi=15//in mm inside diameter 
ODf=38//in mm outside diameter after deformaton
//Specimen is reduced in thickness by 50%
hf=(50/100)*hi

// Sample Problem on page no. 886

printf("\n # Determination of Cofficient of Friction # \n")

IDf=sqrt((ODf^2)-((((ODi^2)-(IDi^2))*hi)/hf)) //new internal diameter calculated , by comparing the volume before and after deformation (3.14/4)*(ODi^2-IDi^2)*hi=(3.14/4)*(ODf^2-IDf^2)*hf
ID=((IDi-IDf)/IDi)*100//change in internal diameter 

printf("\n\n With a 50 percent reduction in height and a %d reduction in internal diameter, from the book data Cofficient of Friction = 0.21",ID) 





