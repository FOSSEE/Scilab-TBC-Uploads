q=poly([0 1 1],'s','coeff');
G=10/q //gain FACTOR=10
H=1
T=G/(1+G*H) 

Stg=(1/(1+G*H))
Stg= (-1+ %i*1)/(49+%i*1)          //at s= %i*w where w=1
disp(abs(Stg),"sensitivity at w=1 is ")

//sensitivity wrt H 
T=-G*H/(1+G*H)
Sth=-50/(49+%i*1)                //at s= %i*w where w=1
disp(abs(Sth),"sensitivity wrt H at w=1 is ")




