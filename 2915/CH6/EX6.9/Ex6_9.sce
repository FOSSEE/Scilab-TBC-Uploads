clc,clear
//Example 6.9
//To find the result of basic operations on 2 given complex numbers

z1 = complex(-2,3)
z2 = complex(3,4)

summ = z1+z2
difference = z1-z2
product = z1*z2
ratio = z1/z2
mag_z1= abs(z1) //modulus of z1
mag_z2= abs(z2)//modulus of z2
//printf('Note: Please go through complex nos scilab syntaxes to comprehend this example code\n\n')
printf('z1 + z2 = %.0f + %.0f*i\n',real(summ),imag(summ))
printf('z1 - z2 = %.0f + %.0f*i\n',real(difference),imag(difference))
printf('z1 * z2 = %.0f + %.0f*i\n',real(product),imag(product))
printf('z1 / z2 = %f + %f*i\n',real(ratio),imag(ratio))
printf('|z1|= sqrt(%.0f)= %f \n',mag_z1^2,mag_z1)
printf('|z2| = %.0f',mag_z2)
