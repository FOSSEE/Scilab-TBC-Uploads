clear
//Initialization
ni=26                //Decimal number

//Calculation

bini = 0
i = 1
while (ni > 0)
      rem = ni-int(ni/2)*2 
      ni = int(ni/2)
      bini = bini + rem*i
      i = i * 10
end
w= bini



//Declaration
printf("\n Binary Equivalent = %d",w)

