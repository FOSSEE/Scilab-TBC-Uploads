clc
drop=5 //in
width=8 //ft
deltaMB=sqrt((width*12/2)^2 +drop^2) - (width*12/2)
epsilon=deltaMB/(width*12/2)
printf("Strain in the wire= %f in/in",epsilon)
