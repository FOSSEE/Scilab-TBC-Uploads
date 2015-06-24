
//Variable declaration
syms t           //symbol defined
et1 = complex(50,86.6)     //defining complex number

//calculations
et = (real(et1)*sqrt(2)*cos(314*t))+imag(et1)*sqrt(2)*cos(314*t+90)  //expression

//Result
disp ( et)
