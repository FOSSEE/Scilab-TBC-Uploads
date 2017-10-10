clear
//Initialiation
ni1=111011011000100               //binary number

//Calculation

deci = 0
i = 0
ni=ni1
while (ni > 0)
      rem = ni-int(ni/10.)*10
      ni = int(ni/10.)
      deci = deci + rem*2**i
      i = i + 1
      end
w=deci              //calling the function
h = dec2hex(w)                             //decimal to hex conversion

//Result
printf("The hexadecimal equivalent of 111011011000100 is %s",h)
