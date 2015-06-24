
//Ex11_2

clc;

//Given:

// for benzene in CGS units
density1=.879;
lac1=.06014; // linear absorption coefficient

// for cyclohexane in CGS units 
density2=0.779;
lac2=.05656; // linear absorption coefficient
l=6.023*10^23;// avogadro constant
ue=0.211;// electron absorption coefficent in barn per electron
// 1 b=10^(-24) cm^2


//solution: (a)Benzene

a1=78;// atomic mass of benzene
mac1=lac1/density1; //mass absorption coefficient
mb=(mac1*a1)/(l*10^-24); //molecule absorption coefficient of benzene

printf("\n The molecule absorption coefficient of benzene in b/molecule is = %f ",mb)
printf("\n The mass absorption coefficient of benzene in cm^2/g is = %f ",mac1)


//solution: (b)cyclohexane

a2=84;// atomic mass of cyclohexane
mac2=lac2/density2; //mass absorption coefficient
mc=(mac2*a2)/(l*10^-24); //molecule absorption coefficient of cyclohexane

printf("\n \n The molecule absorption coefficient of cyclohexane in b/molecule is = %f ",mc)
printf("\n The mass absorption coefficient of cyclohexane in cm^2/g is = %f ",mac2)
