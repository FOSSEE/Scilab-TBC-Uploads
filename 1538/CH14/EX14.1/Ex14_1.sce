//example-14.1
//page no-429
//given
//part(a)
//thickness of GRPS sheet
ts=3  //mm
//depth of this skin
tc=24  //mm
//breadth of skin
b=100  //mm
d=(ts+tc)/2  //mm
//moduli of polyster skin and foamare
Es=7000  //N/mm^2
Ec=20  //N/mm^2
//values of Is and Ic are 
Is=2*(b*ts^3/12+b*ts*d^2)   //mm^4
Ic=b*tc^3/12  //mmm^4
//as we know that flexure rigidity is D, flexure rigidity of skin is Ds and that of core is Dc
//D=Ds+Dc 
D=2*Es*Is+Ec*Ic  //mm^2 for two skins  ---------------(1)
//part(b)
ts1=6  //mm
//Ds1=Es*Is1 
Ds1=Es*b*ts1^2/12  //Nmm^2   --------------(2) (there is calculation mistake I myself have checked from calculator too)
//ratio of (1) and (2) is R (let)
R=D/Ds1   
printf ("flexure rigidity of sandwich beam is %d times more",R)
