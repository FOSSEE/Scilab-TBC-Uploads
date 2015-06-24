clear
clc
//to find longest wavelengths of resonance of the string
//to fing corresponding wavelengths that reach the ear of the listener

// GIVEN:
//freqyuency
f = 440//in Hz
//length of string
L = 0.34//in meters
//wave speed in air
v_air = 343//in m/s

// SOLUTION
//using equation of wave for resonance condition
//longest wavelengths of resonance of the string
lambda1 = (2*L)/1//in meters
lambda2 = (2*L)/2//in meters
lambda3 = (2*L)/3//in meters
//wave speed
v_string = f*lambda1//in m/s
//multiplication factor
v_air_by_v_string = (v_air/v_string)
//corresponding wavelengths that reach the ear of the listener
lambda_1 = (lambda1)*(v_air/v_string)//in meters
lambda_2 = (lambda2)*(v_air/v_string)//in meters
lambda_3 = (lambda3)*(v_air/v_string)//in meters

printf ("\n\n Longest wavelengths of resonance of the string \n lamda1 = %.2f m \n lamda2 = %.2f m \n lamda3 = %.2f m ",lambda1,lambda2,lambda3)
printf ("\n\n Wave speed v_string = \n\n %3i m/s ",v_string)
printf ("\n\n Relation between lambda_air and lambda_string is \n\n lambda_air = %.2f(lambda_string) ",v_air_by_v_string)
printf ("\n\n Corresponding wavelengths that reach the ear of the listener \n lamda_1 = %.2f m \n lamda_2 = %.2f m \n lamda_3 = %.2f m ",lambda_1,lambda_2,lambda_3)
