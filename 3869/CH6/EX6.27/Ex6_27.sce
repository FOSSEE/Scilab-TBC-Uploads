clear
//
//
//

//Variable declaration
h1=1
k1=2
l1=3              //miller indices
h2=2
k2=4
l2=6              //miller indices
a=0.82          
b=0.94
c=0.75            //parameters(nm)

//Calculation
d123=(((h1/a)**2)+((k1/b)**2)+((l1/c)**2))**(-1/2)     //interplanar distance between (123) planes
d246=d123/2                  //interplanar distance between (246) planes

//Result
printf("\n interplanar distance between (123) planes is %0.3f  nm",d123)
printf("\n interplanar distance between (246) planes is %0.4f  nm",d246)
printf("\n answers given in the book are wrong")
