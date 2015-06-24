//example-14.2
//page no-441
//given
//young's modulus of aluminium, iron and boron are resp
//here we are representing a,b and c for aluminum, iron and boron resp.
Ea=71*10^9  //Pa
Eb=210*10^9  //Pa
Ec=440*10^9  //Pa
//as we know that Ec=Ef*Vf+Em*Vm where Ef and Em are the young's modulus of fibre and matrix resp.
//so we get
//210=71*Va+440*Vb   --------------(1)
//assumin void volume is zero and we know that
//Va+Vb=1
//so Vb=1-Va  ---------------(2)
//on solving 1 and 2 we get
Va=31.8  
Vb=68.2
//ratio of Va and Vb
R=Va/Vb
printf ("the volume ratio of aluminium and boron in aluminium boron composite %d",R)
