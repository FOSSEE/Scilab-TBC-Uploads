clear
//Initialization
ni=11010               //binary number

//Calculation
deci = 0
i = 0
while ni>0
      rem = ni-int(ni/10.)*10
      ni = int(ni/10.)
      deci = deci + rem*2**i
      i = i + 1

end
//Declaration
printf("\n Decimal Equivalent = %f",deci)

