clc
// given data

i=12.0/100 // interest rate 
n=5.0 // years

ProjectA=[-2400,600,600,600,600,600] 
ProjectB=[-2400,800,800,800,800,800]
ProjectC=[-2400,500,700,900,1100,1300]


NPVA=ProjectA(1)+ProjectA(2)*(((1+i)**n) - 1)/(i*(1+i)**n)

printf( "\nNPV of Project A is %.i ",NPVA)

NPVB=ProjectB(1)+ProjectB(2)*(((1+i)**n) - 1)/(i*(1+i)**n)

printf( "\nNPV of Project B is %.0f ",NPVB)

ProjectNPVc=0  // cumulative cash flow for project A
for i =1:5
    
    ProjectNPVc=ProjectNPVc+(-ProjectC(1)+ProjectC(i+1))/(1+i)**(i+1)
end
    
    
printf( "\nNPV of Project C is %.2f ",ProjectNPVc)

// The answer for project C is wrong in the book
