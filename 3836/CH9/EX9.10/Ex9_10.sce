clear
//Initializaton

no=34.6875            //decimal number
n_int = int(no)     // Extract the integral part
n_frac = no-n_int   // Extract the fractional part

//Calculation

bini = 0
i = 1
ni = n_int
while (ni > 0)
      rem = ni-int(ni/2)*2 
      ni = int(ni/2)
      bini = bini + rem*i
      i = i * 10
end

// Function to convert binary fraction to decimal fraction
binf = 0
i = 0.1,

nf = n_frac

while (nf > 0)
      nf = nf*2
      rem = int(nf) 
      nf = nf-rem
      binf = binf + rem*i
      i = i/10
end



//Result
printf("\n Decimal equivalent of 34.6875 = %.4f",(bini+binf))

