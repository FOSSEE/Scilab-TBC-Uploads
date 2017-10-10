clear
//
//
//

//Variable declaration
pl1=206850*10**3     //proportional limit(Pa)
pl2=310275*10**3     //proportional limit(Pa)
pl3=413700*10**3     //proportional limit(Pa)
s2=0.0615      //strain
s3=0.2020      //strain
Y=2.0685*10**11    //young's modulus(Pa)

//Calculation
e1=pl1/Y     //elastic strain in 1st case
e2=pl2/Y     //elastic strain in 2nd case
p2=s2-e2     //plastic strain in 2nd case
r2=e2*100/p2   //ratio of elastic and plastic strain in 2nd case
e3=pl3/Y     //elastic strain in 2nd case   
p3=s3-e3     //plastic strain in 2nd case 
r3=e3*100/p3   //ratio of elastic and plastic strain in 3rd case

//Result
printf("\n elastic strain in 1st case is %0.3f",e1)
printf("\n ratio of elastic and plastic strain in 2nd case is %0.3f",r2)
printf("\n ratio of elastic and plastic strain in 3rd case is %0.3f ",r3)
