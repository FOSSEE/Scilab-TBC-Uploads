// Chapter 2
// example 2.2
// page 29
Js=0.1 // ampere per square cm
A=60.2 // ampere per square cm per square kelvin
T=1900 // kelvin

// Js=A*T^2*exp(-b/T) so b=-T*log(Js/(A*T^2))

b=-T*log(Js/(A*T^2))

// b=11600*phi so making phi as subject

phi=b/11600

printf("work function=%f eV \n",phi) 
// the accurate answer is 3.521466 
// but in the book it is mistakenly written as 3.56

if(2.63<phi & phi<4.52)
     printf("thoriated tungsten has work function between 2.63eV to 4.52eV.\nSo sample is likely to be thoriated tingsten")
elseif(phi<=2.63 | phi>4.52)
         printf("tungsten is contaminated")  // for pure tungsten, phi must be 4.52 exactly
else   
    printf("tungsten is pure")  // phi=4.52 implies tungsten is pure
end

// please note that there is error in the answer of work function phi in the book
// The correct answer is 3.521466 eV and not 3.56 eV
