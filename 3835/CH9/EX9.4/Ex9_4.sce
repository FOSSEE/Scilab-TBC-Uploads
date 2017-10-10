clear
//
//given
i=250
v=125
rl=v/i //load resistance
gemf=125+200*0.05+1.5
printf("\n generated emf= %0.1f  V",gemf)
e=(136.5*1200)/1500 //generated emf at 1200rpm
//let v be the terminal voltage at 1200rpm
//then armature current ia=v/rl
//substituting all values in v=e-ia*ra-(voltage drop across the brushes)=97.91
v=97.91
i=v*2 //where rl=0.5 in the denominator is written as 2 
printf("\n current= %0.1f  A",i)
