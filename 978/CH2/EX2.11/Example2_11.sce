//chapter-2,Example2_11,pg 486

R1=10*10^3

R4=10*10^3

Idss=1*10^-3//drain saturation current

Vp=2.2//peak voltage

Vo=10//output voltage

V2=2//input-1

V1=-2//input-2

R5=((R1*R4)/Vo)*((-2*Idss/(Vp^2)))*V1*V2

printf("R5=%.2f ohm",R5)

//R5 should satisfy the condition R5=((1+R1*(-2*Idss*Vp)/R2)*R3*R6) and with Vp negative it is obiviously possible
