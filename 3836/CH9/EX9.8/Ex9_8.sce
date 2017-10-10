clear
//Initialization
ni1=11010               //binary number

//Calculation
ni=ni1
deci = 0
i = 0
while (ni > 0)
      rem = ni-int(ni/10.)*10
      ni = int(ni/10.)
      deci = deci + rem*2**i
      i = i + 1
    end

w=deci              //calling the function

//Declaration
printf("\n Decimal Equivalent = %f",w)

